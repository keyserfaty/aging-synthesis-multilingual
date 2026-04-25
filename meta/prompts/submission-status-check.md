# Round 2 daily submission-status check

Runs daily at 09:33 (10 minutes after Round 1's check, to avoid Gmail-API rate-limit collisions).

## Goal

Same operational shape as Round 1's `~/aging-synthesis/meta/prompts/submission-status-check.md`, applied to Round 2 submissions.

## Targets (placeholders until submissions actually happen)

| # | Venue | Identifier (filled in after submission) |
|---|---|---|
| 1 | Zenodo (locked methodology + predictions) — Day 0 deposit | DOI: pending |
| 2 | Zenodo (paper deposit) | DOI: pending |
| 3 | medRxiv (Round 2 preprint) | ID: pending |
| 4 | Research Synthesis Methods (peer review, track A) | manuscript number: pending |
| 5 | GeroScience (peer review, track B; activates if A rejects) | manuscript number: pending |
| 6 | Aging Cell (peer review, track C; activates if B rejects) | manuscript number: pending |

This file is updated by `publication-prep` and by `paper-assembler` as identifiers become real.

## Steps (run every day)

1. Search Gmail (`me@krn.sh`) for new submission-related correspondence:
   - `(from:editorialmanager OR from:wiley OR from:springer OR from:medrxiv OR from:openrxiv OR from:zenodo) newer_than:1d`
   - `(subject:decision OR subject:reviewer OR subject:revision OR subject:posted OR subject:declined OR subject:accept) newer_than:1d`
2. For each new email, summarize: sender, subject, action required, whether a DOI was issued.
3. If a Round 2 medRxiv DOI was assigned, add it to `~/aging-synthesis-multilingual/INDEX.md` and commit.
4. If a journal sent a decision (RSM, GeroScience, Aging Cell), iMessage Karen with: journal, decision, 1-sentence summary.
5. If RSM rejects → activate GeroScience track (touch `meta/track-B-active.flag`).
6. If GeroScience rejects → activate Aging Cell track (touch `meta/track-C-active.flag`).
7. If nothing new in 24h, exit silently.

## Hard rules

- Do not auto-reply to editor/reviewer email.
- Do not click "verify" or "approve" links.
- Only edit INDEX.md to add a Round 2 medRxiv DOI; nothing else.
