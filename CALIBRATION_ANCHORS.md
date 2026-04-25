# Calibration Anchors — Multilingual Round 2

**Status: LOCKED. Date locked: 2026-04-25.**

These six interventions have pre-committed verdicts. They exist so every other intervention rated under the multilingual methodology can be triangulated against them. If a new verdict is inconsistent with these anchors, the methodology has failed and I revisit — I do not silently bend the anchors.

The first five anchors are imported verbatim from Round 1 (`https://github.com/keyserfaty/aging-synthesis/blob/main/CALIBRATION_ANCHORS.md`). The sixth is specific to multilingual calibration.

---

## Anchor 1: Exercise → **Strong** (carried over from Round 1)

T1 evidence in humans on hard endpoints, replicated across thousands of cohorts. Authority anchored against WHO 2020 physical activity guidelines.

## Anchor 2: Caloric restriction (in mice) → **Strong** (carried over)

T3 evidence with extensive replication across decades and labs. **Strong for mice**, Suggestive in humans (CALERIE-2 biomarker results, no mortality data).

## Anchor 3: Rapamycin → **Probable** (carried over)

Multiple ITP-positive cohorts (T3) across both sexes; T2 human surrogate endpoint data. Anchored against Matt Kaeberlein's published position; ITP cohort summaries; PEARL trial.

## Anchor 4: NMN → **Suggestive** (carried over)

T4-T5 evidence; small lifespan effects, single-lab; mechanism plausible; human RCTs show NAD+ increases without clear functional benefit. Industry-funded literature dominates.

## Anchor 5: Resveratrol → **Mostly hype** (carried over)

T4 evidence that has failed at higher tiers. ITP tested it; failed. Major mouse studies had problematic controls. Anchored against ITP's negative result.

---

## Anchor 6 (Round 2 only): Epitalon → **Mostly hype**

Epitalon is a tetrapeptide (Ala-Glu-Asp-Gly) developed by Vladimir Khavinson's group at the St. Petersburg Institute of Bioregulation and Gerontology, claimed to extend lifespan via pineal gland modulation and telomerase activation. It is the most-cited example of a "Russian peptide bioregulator" — a class largely absent from the English-language synthesis but heavily represented in the Russian literature.

**Why Mostly hype** (committed before multilingual sweep):
- ~30-year publication track centered on a single laboratory and its collaborators.
- No ITP testing; no RP2 testing.
- No independent replication of the lifespan-extension claim outside the Khavinson group.
- Small (n < 50) open-label human studies with surrogate endpoints; no pre-registration.
- Commercialization via supplement channels predates the strongest evidence — the standard "Mostly hype" trajectory.
- Mechanistic claim (telomerase activation in vivo at peptide doses absorbed orally or via nasal delivery) is implausible at face value.

**Authority anchored against**: Khavinson lab's published positions (acknowledged); independent gerontologists' published critiques; absence from ITP and RP2.

**Why this is the multilingual anchor**: if the multilingual sweep produces evidence that *moves* this verdict, that is itself a finding — either the Khavinson literature is genuinely under-credited in English (significant) or the methodology mis-discounts a Q1-translation-heavy literature (important to flag). Either way, the anchor stays *until* a methodology-revision commit moves it; I do not re-anchor mid-stream.

---

## Triangulation rules

When rating any new intervention under multilingual evidence:

1. **Identify the closest anchor** by evidence profile (not chemical similarity).
2. **Apply translation tier discount** before comparing.
3. If the new intervention has weaker evidence than the anchor, it is at most one band below.
4. **Document the comparison** on the intervention's page.
5. **Detect anchor violations.** If a verdict implies an anchor is mis-rated, open a GitHub issue — do not silently re-rate.

---

## Anchor revision protocol

Anchors can be revised, but only via:

- New ITP/RP2 data on Anchor 1–5 (would re-rate rapamycin, resveratrol).
- New large human RCT on exercise or CR (could re-rate Anchor 1–2).
- New Q3+ multilingual evidence forcing Anchor 6 (Epitalon) to move — and only after independent replication outside the original lab.

Revision requires a commit-message entry on this repository, re-review of every page that triangulated against the anchor, and documentation of the triggering evidence.
