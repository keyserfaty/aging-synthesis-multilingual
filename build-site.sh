#!/bin/bash
# Static site generator for aging-synthesis
# Converts every .md file to .html with a simple stylesheet, builds a site/ directory
# Requires: pandoc (`brew install pandoc`)
# Usage: bash build-site.sh

set -e

ROOT="$(cd "$(dirname "$0")" && pwd)"
SITE="$ROOT/site"
CSS_FILE="$SITE/style.css"

mkdir -p "$SITE"
mkdir -p "$SITE/interventions"
mkdir -p "$SITE/interactions"

# Stylesheet
cat > "$CSS_FILE" << 'EOF'
:root {
  --fg: #1a1a1a;
  --bg: #fafaf7;
  --accent: #7a3d00;
  --muted: #666;
  --rule: #d8d4c8;
}
* { box-sizing: border-box; }
html, body {
  margin: 0;
  padding: 0;
  font-family: ui-serif, Charter, Georgia, serif;
  font-size: 17px;
  line-height: 1.55;
  color: var(--fg);
  background: var(--bg);
}
body {
  max-width: 720px;
  margin: 0 auto;
  padding: 2rem 1.5rem 6rem;
}
h1, h2, h3 { font-family: ui-sans-serif, -apple-system, BlinkMacSystemFont, "Inter", sans-serif; line-height: 1.2; }
h1 { font-size: 2rem; margin-top: 0; border-bottom: 2px solid var(--rule); padding-bottom: 0.4rem; }
h2 { font-size: 1.35rem; margin-top: 2rem; color: var(--accent); }
h3 { font-size: 1.1rem; margin-top: 1.5rem; }
a { color: var(--accent); text-decoration: underline; text-underline-offset: 2px; }
a:hover { background: #f4ecd8; }
code { background: #f0ebd8; padding: 1px 4px; border-radius: 3px; font-size: 0.9em; }
pre code { display: block; padding: 0.8em; overflow-x: auto; }
blockquote {
  border-left: 3px solid var(--accent);
  margin: 1em 0;
  padding: 0.4em 1em;
  color: var(--muted);
}
hr { border: none; border-top: 1px solid var(--rule); margin: 2rem 0; }
table { border-collapse: collapse; margin: 1em 0; width: 100%; }
th, td { border: 1px solid var(--rule); padding: 0.4em 0.7em; text-align: left; }
th { background: #f0ebd8; }
.nav { font-size: 0.9rem; color: var(--muted); margin-bottom: 1rem; }
.footer { font-size: 0.85rem; color: var(--muted); margin-top: 4rem; padding-top: 1rem; border-top: 1px solid var(--rule); }
EOF

# Header / footer templates inline
build_one() {
  local md_file="$1"
  local out_file="$2"
  local title="$3"
  local rel_root="$4"

  pandoc "$md_file" \
    --from gfm \
    --to html \
    --standalone \
    --metadata title="$title" \
    --css "${rel_root}style.css" \
    --include-before-body=<(cat <<EOF
<div class="nav"><a href="${rel_root}index.html">← All interventions</a></div>
EOF
) \
    --include-after-body=<(cat <<EOF
<div class="footer">
  Aging Synthesis — locked methodology, evidence-weighted verdicts. Updated continuously.
  <a href="${rel_root}methodology.html">Methodology</a> ·
  <a href="${rel_root}CALIBRATION_ANCHORS.html">Anchors</a> ·
  <a href="https://github.com/keyserfaty/aging-synthesis/commits/main">Commit history</a>
</div>
EOF
) \
    -o "$out_file"
}

# Index, methodology, anchors at root
build_one "$ROOT/INDEX.md" "$SITE/index.html" "Aging Interventions — Calibrated Verdict Index" ""
build_one "$ROOT/methodology.md" "$SITE/methodology.html" "Methodology" ""
build_one "$ROOT/CALIBRATION_ANCHORS.md" "$SITE/CALIBRATION_ANCHORS.html" "Calibration Anchors" ""
# CHANGELOG removed from public build — verdict history is in git commits

# Intervention pages
for md in "$ROOT/interventions/"*.md; do
  base=$(basename "$md" .md)
  title=$(head -1 "$md" | sed 's/^# //')
  build_one "$md" "$SITE/interventions/$base.html" "$title" "../"
done

# Interaction pages
for md in "$ROOT/interactions/"*.md; do
  base=$(basename "$md" .md)
  title=$(head -1 "$md" | sed 's/^# //')
  build_one "$md" "$SITE/interactions/$base.html" "$title" "../"
done

# Rewrite intra-doc links from .md to .html in built HTML
find "$SITE" -name "*.html" -exec sed -i '' -E 's/href="([^"]+)\.md"/href="\1.html"/g' {} \;

echo "Built site at: $SITE"
echo "Open: file://$SITE/index.html"
