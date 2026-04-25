# Methodology — Multilingual Round 2

**Status: LOCKED. Date locked: 2026-04-25.**

This methodology extends `methodology.md` from the Round 1 paper (`https://github.com/keyserfaty/aging-synthesis`) to incorporate non-English-language evidence. It is locked **before any per-intervention assessment under non-English sources begins**, so future-me cannot move goalposts to fit a preferred conclusion. Changes are logged as commits with explicit "methodology revision" reasoning, and force re-review of every page.

The Round 1 methodology is incorporated by reference in full. This document specifies only the *additions and modifications* needed for multilingual evidence.

---

## 1. Languages in scope

This round covers seven languages, chosen for volume of aging-relevant literature missing from English sources, presence of formal abstract databases, and AI translation reliability:

1. Mandarin Chinese (CNKI, Wanfang Data, CMB, SinoMed)
2. Japanese (J-STAGE, CiNii, ICHUSHI)
3. Russian (eLibrary.ru, CyberLeninka)
4. German (LIVIVO, GMS, DIMDI)
5. Korean (KISS, RISS, KMbase)
6. Spanish (LILACS, SciELO, Dialnet)
7. French (Pascal-Francis, HAL, Cairn)

Italian, Portuguese, Hindi, Arabic, and Hebrew are deferred — see `meta/deferred-languages.md`.

---

## 2. Translation quality flags

Every translated source is tagged at one of four levels:

| Flag | Meaning |
|---|---|
| **Q1** | Machine translation (Anthropic Claude or DeepL), no human verification |
| **Q2** | Machine translation + spot-check by author against a domain glossary (`meta/glossary.md`) |
| **Q3** | Machine translation + back-translation cross-check (translate → English → translate back; verify semantic preservation) |
| **Q4** | Human-verified translation by a domain-fluent reader |

**Default for sweep agents**: Q1.
**Default for any source cited in a final verdict**: must be ≥ Q2.
**Q4 is reserved for**: claims that move a Round 1 verdict by ≥ one band, or claims that introduce a newly surfaced intervention without English-language corroboration.

---

## 3. Translation tier discount

This is the central anti-bias rule for multilingual evidence:

- A claim supported only by Q1-translated sources is **discounted one evidence tier** (e.g. T3 → T4) until at least one Q2+ source confirms.
- A claim supported only by Q1+Q2 sources is **discounted half a tier** for verdict-band purposes (rounded against the claim — i.e., toward the lower band).
- A claim supported by ≥ one Q3 or Q4 source is **not discounted**.

This discount stacks on top of Round 1's COI discount.

---

## 4. Cross-language reconciliation rule

For every Round 1 intervention, the multilingual page records:

1. **Per-language evidence** (rows for each of the 7 languages, plus English from Round 1 by reference).
2. **Reconciled verdict** under multilingual evidence — using the same six bands as Round 1.
3. **Move vs Round 1**: one of `up`, `down`, `sideways`, `unchanged`. Sideways means the band stayed the same but the basis shifted (e.g. English-only Suggestive on T2 surrogate; multilingual Suggestive on a different T3 mouse line).
4. **Hypothesis for any move**: real biology / regulatory difference / publication bias / study quality / unknown.

All four fields are required. Missing data is recorded as "no data found" — never silently omitted.

---

## 5. Pre-committed predictions (anti-bias mechanism)

Before any per-intervention assessment under non-English sources begins, I commit to a list of **8–12 specific predictions** about which Round 1 verdicts will move when multilingual evidence is added. The predictions live in `meta/expected-discordances.md`, locked on the same date as this file.

At paper-assembly time, the actual moves are scored against the predictions. Prediction accuracy is published in the Round 2 paper as a calibration metric for the synthesizer (me). Calibration must be reported regardless of whether it flatters or embarrasses the synthesis.

This is the central anti-bias mechanism for Round 2. Without it, a multilingual sweep is just confirmation bias with extra steps.

---

## 6. New-intervention inclusion rule

A "newly surfaced intervention" (one not covered in Round 1) gets a full page if:

- It is named, characterized (chemical / pharmacological / behavioral class), and has measurable endpoints in **≥ 2 sources** in the non-English literature, **and**
- At least one of those sources is at evidence tier T3 or higher per Round 1's tier definitions, **and**
- At least one source is at translation quality Q2 or higher.

Items failing the threshold are recorded in `meta/queue.md` for possible future inclusion but do not get full pages.

---

## 7. What does *not* change from Round 1

- Evidence tiers T0–T5 (verbatim).
- Verdict bands (Strong / Probable / Suggestive / Mixed / Mostly hype / Insufficient evidence).
- The five calibration anchors (Exercise, Caloric Restriction, Rapamycin, NMN, Resveratrol).
- COI discount rules.
- The page-template structure (with the addition of the "Multilingual evidence ladder" and "Cross-language reconciliation" sections).
- The endpoints we evaluate vs. don't evaluate.

---

## 8. Sixth (multilingual-specific) anchor

To make cross-language calibration auditable, one additional anchor is added for Round 2 only:

- **Epitalon (Russian peptide bioregulator)** → **Mostly hype**

Anchored against: Khavinson lab's ~30-year publication record; absence of independent replication outside Russia; absence from ITP; small open-label trials; commercialization track record. The verdict is committed *before* the multilingual sweep begins. If multilingual evidence forces this anchor to move, the methodology has failed in the same way as a Round 1 anchor failure: the failure is logged as a GitHub issue and force-triggers re-review.

---

## 9. AI assistance disclosure

The synthesis is AI-assisted (Anthropic Claude). For Round 2, AI is additionally used for translation and for first-pass abstract triage during language sweeps. The human author verifies citations, audits translation quality flags on a sampling basis, and bears full responsibility for the synthesis. Per ICMJE 2024 guidance, the AI is disclosed and is not an author.

---

*This document is locked 2026-04-25. Any change requires a methodology-revision commit message and re-review of every existing page. Triangulated against `CALIBRATION_ANCHORS.md`. Disagreements should be raised as GitHub issues, not by silently editing.*
