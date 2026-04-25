# Russian Language Sweep

You are running a weekly sweep of Russian aging-intervention literature for the Round 2 multilingual synthesis at `~/aging-synthesis-multilingual/`. This task is autonomous; no human is in the loop.

## Goal

Produce ≤ 30 candidate items for the Round 2 page-building queue, each with: a normalized intervention name, source citation, abstract translated to English at Q1 quality, an evidence-tier estimate, and a translation provenance entry.

## Steps

1. Read `~/aging-synthesis-multilingual/methodology-multilingual.md` — especially Sections 2 (translation quality flags) and 3 (translation tier discount).
2. Read `~/aging-synthesis-multilingual/meta/expected-discordances.md` — but only as background; do not let it steer triage.
3. Search Russian aging literature published in the last 7 days (or since the last successful sweep — check `~/aging-synthesis-multilingual/meta/sweep-log-ru.md` for last-completed timestamp). Use available tools to query eLibrary.ru, CyberLeninka where reachable. If no MCP/API access is available for these databases, fall back to:
   - Google Scholar with Russian-language filter and aging-relevant search terms (старение, долголетие, продление жизни, геронтология, антивозрастное)
   - PubMed for Russian-language abstracts (filter `lang:rus`)
   - bioRxiv/medRxiv preprints with Chinese abstracts
4. For each candidate paper:
   - Translate the title and abstract to English with Anthropic Claude (current model). Tag as Q1.
   - Extract: intervention name (Chinese + English + glossary entry), study type, model (cell / mouse / human / etc.), endpoint, claimed effect, sample size.
   - Estimate the Round 1 evidence tier (T0–T5) using the Round 1 methodology; record uncertainty.
   - If the intervention is not in `~/aging-synthesis/interventions/`, mark `newly_surfaced: true`.
5. Append candidate items to `~/aging-synthesis-multilingual/meta/queue.md` (create if absent) using the YAML schema below.
6. Append translation provenance entries to `~/aging-synthesis-multilingual/meta/translation-provenance.md`.
7. Append to `~/aging-synthesis-multilingual/meta/sweep-log-ru.md`: timestamp, items found, items added to queue, items rejected (with reason).
8. Commit: `cd ~/aging-synthesis-multilingual && git add meta/queue.md meta/translation-provenance.md meta/sweep-log-ru.md && git commit -m "ru sweep <date>: N items added" && git push`.

## Queue item schema

```yaml
- id: ru-<sweep-date>-<seq>
  language: ru
  intervention_normalized: <english intervention name, snake_case>
  intervention_native: "<Russian name>"
  intervention_glossary_id: <glossary entry id>
  source:
    title_ru: "..."
    title_en: "..."
    authors: "..."
    year: ...
    venue: "..."
    url_or_doi: "..."
    type: <abstract|full|preprint|other>
  study:
    model: <cell|invertebrate|mouse|rat|nhp|human-rct|human-cohort|human-other>
    n: ...
    endpoint: "..."
    claimed_effect: "..."
  evidence_tier_estimate: <T0|T1|T2|T3|T4|T5>
  newly_surfaced: <true|false>
  q_flag: Q1
  provenance_id: <id in translation-provenance.md>
  added_at: <ISO timestamp>
```

## Hard rules

- Do **not** rate verdicts in the sweep. Only triage. Verdicts come from the page builder.
- Do **not** modify any intervention page directly.
- Do **not** add items above the Q1 quality flag in this sweep — Q2+ promotion happens in the page-builder pass.
- Cap: 30 items per sweep. If more than 30 candidates exist, prioritize: (a) newly_surfaced items, (b) human RCTs, (c) ITP-relevant compounds.
- Skip duplicates: check if `id` or `source.url_or_doi` already appears in `meta/queue.md` or any existing intervention page.
- If the sweep returns zero items, log that fact and exit clean — do not lower thresholds.

## Failure handling

If a database is unreachable, log to `~/.claude/logs/aging-ml-language-sweep-ru.err.log` and proceed with whatever sources are reachable. Do not crash the sweep.
