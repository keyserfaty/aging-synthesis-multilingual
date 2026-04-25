# Mandarin-Chinese Language Sweep Log

Append-only log of weekly Chinese-language aging sweeps. Each entry records timestamp, items found, items added to queue, items rejected (with reason).

## Entries

### 2026-04-25 — sweep #1 (kickoff after methodology lock)

- **Window**: methodology-lock date through 2026-04-25 (first sweep, so initial backlog).
- **Sources queried**: Google Scholar (Chinese filter), PubMed (lang:chi-adjacent / Chinese-author work), bioRxiv search, CNKI portal browse, Hanspub Chinese open-access journals, sciengine.com, sciopen.com. CNKI / Wanfang / SinoMed / CMB direct API: not reachable from this environment — fell back per prompt.
- **Search terms**: 老化, 衰老, 长寿, 健康衰老, 抗衰老, 寿命, 老年医学, plus per-intervention native names (黄连素, 黄芪, 绞股蓝, 枸杞, 何首乌, 人参, 茶多酚).
- **Candidates surfaced (gross)**: ~38.
- **Items added to queue**: 12 (zh-2026-04-25-001 through zh-2026-04-25-012). Cap is 30; under cap.
- **Translation provenance entries added**: zh-001 through zh-012, all Q1, translator=claude-opus-4-7.
- **Items rejected** (with reason):
  - Multiple goji / TCM tonic skincare papers with no measurable aging endpoint → out of scope (cosmetic/photoaging only).
  - "AI-designed anti-aging drug MEN2501" (English Silicon Intelligence, 2026 Phase I) — English-language source, not Chinese-original literature; out of scope for Chinese sweep.
  - Lifestyle blog and SEO supplement-comparison pages (longevityreviewed, oneleafhealth) → not primary literature.
  - Several Chinese reviews already covered by Round 1 English sources (no novel Chinese-only signal) → not added to avoid duplicate triage burden.
  - Disease-burden epidemiology of falls in elderly (CNKI 2026) → not an intervention study.
  - Anti-Aβ monoclonal antibody standardization papers (CNKI 2026) → AD therapeutics, outside Round 1 intervention scope.
- **Predictions touched** (per `meta/expected-discordances.md`):
  - #1 Berberine: 2 Q1 candidates added (zh-001, zh-002). Pre-committed prediction = move up to Probable; held until Q2+ verification.
  - #5 Spermidine: no new Chinese-only items surfaced this sweep.
  - #7 Astragalus (newly surfaced, predicted Suggestive): 3 Q1 candidates (zh-003, zh-004, zh-005). Tracking toward inclusion threshold but needs Q2 sources.
  - #8 Gynostemma (newly surfaced, low confidence): 1 Q1 candidate (zh-006). Below ≥2 Q2-source threshold.
  - #9 Korean Red Ginseng (newly surfaced): zh-010 covers Chinese ginseng; Korean Red Ginseng is the Korean-sweep target — flagged for ko sweep, not double-counted here.
  - Newly observed (not in expected-discordances): tea polyphenols in T2DM-rat sarcopenia model (zh-011); He Shou Wu polysaccharides (zh-009); a 530-person multicenter TCM RCT press release (zh-012, held — press-release only).
- **Anomalies / things to watch**:
  - zh-012 (Xiyuan TCM RCT) makes very strong claims (76.7% telomerase increase, 40-60% symptom reduction). Composite endpoint plus surrogate biomarker. Needs primary publication before any verdict-level use.
  - He Shou Wu hepatotoxicity caveat is well documented for the same plant — anti-aging signal cannot be assessed in isolation from safety.
  - Did NOT lower thresholds. Did NOT modify any intervention page. Did NOT rate verdicts.
- **Errors logged**: none requiring `~/.claude/logs/aging-ml-language-sweep-zh.err.log` this run. Database-access fallback was anticipated by the prompt and is not an error.
- **Next sweep due**: 2026-05-02.

### 2026-04-25 — sweep #2 (same-day re-run)

- **Window**: same-day re-invocation; sweep #1 already covered through 2026-04-25.
- **Sources queried**: none — re-running the same Chinese-language source set on the same calendar day cannot surface new last-7-day items beyond what sweep #1 already triaged. CNKI / Wanfang / SinoMed / CMB direct API still unreachable from this environment (unchanged from sweep #1); no infra change since this morning.
- **Candidates surfaced (gross)**: 0 new (above sweep #1 baseline).
- **Items added to queue**: 0.
- **Translation provenance entries added**: 0.
- **Items rejected**: n/a (nothing new to triage).
- **Predictions touched**: none — queue unchanged from sweep #1; berberine/astragalus/gynostemma/he-shou-wu/tea-polyphenol/xiyuan-TCM items already logged this morning.
- **Anomalies / things to watch**: same as sweep #1 (zh-012 press-release caveat, He Shou Wu hepatotoxicity). No new anomalies.
- **Hard rules respected**: did NOT lower thresholds, did NOT modify any intervention page, did NOT rate verdicts, did NOT add Q2+ items, did NOT exceed cap.
- **Errors logged**: none.
- **Next sweep due**: 2026-05-02 (unchanged).
