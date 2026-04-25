# Publication Prep

Runs daily but only acts after `meta/paper-assembled.flag` exists.

## Goal

Prepare Round 2 submissions for Karen's final review-and-submit click. Same shape as Round 1's `publication-tracker` agent but for the multilingual paper.

## Trigger

Existence of `~/aging-synthesis-multilingual/meta/paper-assembled.flag`. If absent, exit clean.

## Steps (run once when flag appears)

1. **Mint Zenodo deposit for the paper itself**:
   - Bundle: `paper/paper.md`, `paper/paper.pdf`, `paper/paper.docx`, `meta/discordance-map.md`, `meta/expected-discordances.md`, the verdict-table snapshot.
   - Use the same Karen identity (me@krn.sh, ORCID 0009-0007-9185-4181) as Round 1.
   - Resource type: Publication / Preprint.
   - Title, abstract, keywords prefilled from `paper/paper.md` front-matter.
   - **Stop before clicking Publish** — leave as a draft for Karen.
2. **Generate three cover letters** (one per peer-review track):
   - `paper/cover-letter-RSM.md` — Research Synthesis Methods (methods framing)
   - `paper/cover-letter-GeroScience.md` — domain framing
   - `paper/cover-letter-AgingCell.md` — fallback
   - Convert each to .docx via pandoc.
3. **Confirm submission policies**:
   - Read author guidelines for RSM, GeroScience, Aging Cell.
   - Confirm none preclude concurrent multilingual-evidence narrative reviews.
   - Confirm all permit medRxiv preprint posting (they do, but verify in case of policy change).
   - Write findings to `paper/policy-confirmation.md`.
4. **Prepare medRxiv submission draft**:
   - Generate the metadata block for `submit.medrxiv.org` (subject area: Geriatric Medicine; abstract; keywords; data availability statement referencing both Zenodo DOIs).
5. **Send iMessage to +16282084916**: "Round 2 publication prep done. Zenodo draft + 3 cover letters + medRxiv draft ready. Review and submit at your pace."
6. Touch `~/aging-synthesis-multilingual/meta/publication-prepared.flag` to disable subsequent runs.
7. Commit + push.

## Hard rules

- **Do not** click Publish on Zenodo, Submit on medRxiv, or Approve on any peer-review system.
- **Do not** create new accounts for the journal portals — Karen reuses her ORCID + Lancet/Springer accounts from Round 1.
- **Do not** generate the cover letters by copy-paste from Round 1; they must reference the Round 2 multilingual contribution.
