# Expected Discordances — Pre-committed Predictions

**Status: LOCKED. Date locked: 2026-04-25.**

This file is committed **before any non-English-language source has been read for Round 2**. It contains 12 specific predictions about which Round 1 verdicts will move when multilingual evidence is added, and in which direction. At paper-assembly time, the actual moves are scored against these predictions and the score is published in the Round 2 paper.

This is the central anti-bias mechanism for Round 2. A multilingual review without pre-committed predictions is just a confirmation-bias accelerator.

Format: **Intervention → predicted move → confidence (low/medium/high) → rationale**.

---

1. **Berberine → Probable (up from Suggestive in Round 1) → high**
   - Rationale: Chinese pharmacology literature on berberine is extensive (TCM origin) and includes RCTs on glycemic and lipid endpoints not all in PubMed. Likely a meaningful but not dramatic upgrade.

2. **EGCG / Green tea → Suggestive (unchanged band, basis shifts) → medium**
   - Japanese cohort literature on green tea consumption is large and consistent; will move the basis from observational-only to observational + Japanese cohort, but not the band.

3. **Curcumin → Mostly hype (unchanged) → high**
   - Indian/Hindi literature is in scope for Round 3, not Round 2; Chinese literature on curcumin parallels the English literature in showing the bioavailability ceiling. No band move expected.

4. **Sauna / heat exposure → Probable (unchanged) → high**
   - KIHD is Finnish; Finnish is out of scope but the Japanese literature on hot-spring (onsen) bathing may add modest cohort confirmation. Sideways at most.

5. **Spermidine → Suggestive (unchanged) → medium**
   - German literature (Madeo lab origin) was already partially incorporated via English translations in Round 1. May add modest evidence but unlikely to move the band.

6. **Newly surfaced: Khavinson peptide bioregulators (Epitalon, Thymalin, Vesugen, etc.) → Mostly hype as a class → very high**
   - This is also Anchor 6. Predict that the multilingual evidence base, while large in volume, is concentrated in a single lab and lacks independent replication.

7. **Newly surfaced: Astragalus (Huang Qi) → Suggestive → medium**
   - Heavy TCM literature; some mouse work on astragaloside IV; likely qualifies for a page at Suggestive, contingent on Q2+ Chinese sources.

8. **Newly surfaced: Gynostemma (Jiaogulan) → Suggestive → low**
   - Chinese/Japanese literature exists; AMPK-activation mechanism overlaps with metformin claims. May not clear the inclusion threshold.

9. **Newly surfaced: Korean Red Ginseng → Suggestive → high**
   - Korean RCT volume on red ginseng is substantial; likely qualifies for a page. Whether at Suggestive or Mixed depends on heterogeneity.

10. **Newly surfaced: Skulachev SkQ1 / SkQR1 (mitochondria-targeted antioxidants) → Suggestive → medium**
    - Russian-origin compound class; some English-language follow-up. May qualify.

11. **Metformin → Mixed (unchanged band, basis shifts) → high**
    - Chinese T2D literature is enormous. Unlikely to move the longevity band but will substantially expand the basis.

12. **Time-restricted eating → Mixed (unchanged) → medium**
    - Japanese / Korean cohort and intervention literature is moderate; unlikely to move the band given the Liu 2022 NEJM null already constrains it.

---

## Scoring rubric (run at paper-assembly time)

For each prediction, classify as:

- **Hit** — predicted band/move and observed band/move match.
- **Partial hit** — predicted direction (up/down/sideways/unchanged) is right, but band differs by 1.
- **Miss** — direction is wrong, or new-intervention prediction failed inclusion threshold while expected to qualify (or vice versa).

Confidence-weighted score: each prediction's outcome is weighted by its declared confidence (low=1, medium=2, high=3, very high=4). Total possible from this list: 1·hi + 1·very-hi + 1·low + 9·other = sum of weights. Hit: full weight. Partial: half weight. Miss: zero.

The final calibration metric is published as `score / max_possible` in the Round 2 paper, regardless of value.

---

## What this list deliberately is *not*

- Not a comprehensive catalog of expected findings — only the items where a non-trivial bet can be made now.
- Not editable — corrections to phrasing are committed as new commits, but the substantive predictions are frozen.
- Not used as input to the per-intervention assessment process. Page builders work from sources, not from this list. The scoring happens only at the final assembly.
