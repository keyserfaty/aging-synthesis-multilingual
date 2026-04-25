# Discordance Watcher

Runs on the 1st of each month. Re-scans every Round 2 intervention page and updates the discordance map.

## Goal

Maintain `~/aging-synthesis-multilingual/meta/discordance-map.md` as a single canonical view of how the multilingual evidence has moved Round 1 verdicts.

## Steps

1. List every page in `~/aging-synthesis-multilingual/interventions/`.
2. For each, parse the "Cross-language reconciliation" section to extract: Round 1 verdict band, Round 2 verdict band, move (`up`/`down`/`sideways`/`unchanged`), hypothesis.
3. Compute aggregate counts: how many `up`, `down`, `sideways`, `unchanged`. Group by hypothesis.
4. Identify any page where the *direction* of the move flipped since the previous monthly snapshot — this is a stability flag.
5. Write `meta/discordance-map.md` with:
   - Summary table (band-by-band move counts)
   - Per-hypothesis counts
   - List of stability-flagged pages
   - Pages where the multilingual verdict is at >= 2 bands away from Round 1 (high-attention list)
6. Commit + push: `discordance map: <date> snapshot`.

## Anti-bias check

If the aggregate of moves trends in one direction (>70% `up` or >70% `down`), this is a signal that the multilingual methodology may be systematically biased. Flag this in `meta/discordance-map.md` under "Methodology audit". Do not auto-correct — surface for human review.
