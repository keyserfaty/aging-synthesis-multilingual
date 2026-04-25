# Paper Assembler

Runs daily but only assembles when end-state checks pass. Builds the Round 2 paper from completed pages.

## Goal

When ≥ 75% of pages are in `stable` status and end-state checks pass, assemble `paper/paper.md` and notify Karen.

## End-state checks (all must pass)

1. Every Round 1 intervention has a `~/aging-synthesis-multilingual/interventions/<slug>.md` page with a populated "Multilingual evidence ladder" (even "no data found" rows count as populated).
2. ≥ 15 pages exist for newly surfaced interventions.
3. `meta/discordance-map.md` exists and was updated this month.
4. The expected-discordances scorecard can be computed (every prediction has a resolved status: `hit` / `partial` / `miss`).
5. `meta/translation-provenance.md` has zero entries with `q_flag: Q1` referenced as load-bearing in any intervention page.
6. `methodology-multilingual.md` and `CALIBRATION_ANCHORS.md` are unchanged since the Day 0 commit (`git diff <day-0-sha> -- methodology-multilingual.md CALIBRATION_ANCHORS.md` is empty).
7. Day 0 Zenodo deposit DOI resolves (HTTP 200 on `https://doi.org/<doi>`).

If any check fails, exit clean — do not partial-assemble.

## Assembly steps (when all checks pass)

1. Pull all pages, the discordance map, the predictions scorecard, the translation-provenance log.
2. Compose `paper/paper.md` with the following SANRA-formatted structure:
   - Title, abstract, plain-language summary
   - Section 1: Background and motivation (English-only synthesis is incomplete; AI translation removes the constraint)
   - Section 2: Methodology (reference Round 1; describe Round 2 additions; reference the locked methodology DOI)
   - Section 3: Per-language summary (volume of literature reviewed; key sources)
   - Section 4: Reconciled verdicts (table of all 38 + new pages with Round 1 verdict / Round 2 verdict / move / hypothesis)
   - Section 5: Discordance findings (the discordance map, distilled)
   - Section 6: Newly surfaced interventions (one paragraph per new page)
   - Section 7: Prediction scorecard (the 12 predictions vs actual)
   - Section 8: Limitations (translation quality; database coverage; selection bias)
   - Section 9: Data + code availability (Zenodo DOIs, GitHub repo)
   - References, AI-disclosure, COI statement
3. Run `bash build-site.sh` to produce HTML.
4. Run pandoc + weasyprint to produce `paper/paper.pdf`.
5. Commit + push: `paper: assembled <date>`.
6. Send iMessage to +16282084916: "Round 2 paper assembled. Review at <repo>/paper/paper.md before publication-prep."
7. Touch `~/aging-synthesis-multilingual/meta/paper-assembled.flag` (used by publication-prep agent).

## Failure handling

If any subprocess fails (pandoc, weasyprint, build-site.sh), log to `~/.claude/logs/aging-ml-paper-assembler.err.log` and do not commit a partial paper.
