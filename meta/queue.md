# Round 2 Triage Queue

Candidate items surfaced by language-sweep agents. Items here are **not** verdicts — they are triage entries awaiting page-builder review. Schema is defined in each language sweep prompt (`meta/prompts/language-sweep-<lang>.md`).

Append-only. Page builder consumes from the top and marks items `consumed: true` rather than removing them.

## Items

```yaml
- id: zh-2026-04-25-001
  language: zh
  intervention_normalized: berberine
  intervention_native: "黄连素 / 小檗碱"
  intervention_glossary_id: berberine
  source:
    title_zh: "小檗碱在中国代谢综合征患者炎症标志物上的影响：随机对照试验荟萃分析"
    title_en: "The effects of berberine on inflammatory markers in Chinese patients with metabolic syndrome and related disorders: a meta-analysis of randomized controlled trials"
    authors: "(multi-author meta-analysis, Chinese cohorts)"
    year: 2022
    venue: "Inflammopharmacology"
    url_or_doi: "10.1007/s10787-022-00976-2"
    type: abstract
  study:
    model: human-rct
    n: "pooled (multiple Chinese RCTs)"
    endpoint: "CRP, TNF-α, IL-6, metabolic syndrome markers"
    claimed_effect: "Reduction in inflammatory markers in Chinese metabolic-syndrome cohorts"
  evidence_tier_estimate: T3
  newly_surfaced: false
  q_flag: Q1
  provenance_id: zh-001
  added_at: 2026-04-25T00:00:00Z

- id: zh-2026-04-25-002
  language: zh
  intervention_normalized: berberine
  intervention_native: "黄连素 / 小檗碱"
  intervention_glossary_id: berberine
  source:
    title_zh: "小檗碱通过调节p16及周期蛋白延长小鼠寿命并改善细胞衰老"
    title_en: "Berberine ameliorates cellular senescence and extends the lifespan of mice via regulating p16 and cyclin protein expression"
    authors: "Dang Y, et al."
    year: 2020
    venue: "Aging Cell"
    url_or_doi: "10.1111/acel.13060"
    type: full
  study:
    model: mouse
    n: "natural and accelerated-aging mouse cohorts"
    endpoint: "Median/maximum lifespan; p16/cyclin expression; fur density; frailty"
    claimed_effect: "Late-stage lifespan extension and improvement in frailty markers"
  evidence_tier_estimate: T3
  newly_surfaced: false
  q_flag: Q1
  provenance_id: zh-002
  added_at: 2026-04-25T00:00:00Z

- id: zh-2026-04-25-003
  language: zh
  intervention_normalized: astragalus
  intervention_native: "黄芪 / 黄芪多糖 (APS)"
  intervention_glossary_id: astragalus_huangqi
  source:
    title_zh: "黄芪多糖通过自噬通路缓解肝细胞衰老"
    title_en: "Astragalus polysaccharide alleviated hepatocyte senescence via autophagy pathway"
    authors: "(Chinese group; PubMed 34962345)"
    year: 2022
    venue: "Chinese pharmacology journal (PubMed-indexed)"
    url_or_doi: "PMID:34962345"
    type: abstract
  study:
    model: mouse
    n: "aged-mouse hepatocyte cohort"
    endpoint: "Senescence markers (p16, p21, SA-β-gal); hepatic histology"
    claimed_effect: "Reduction in senescence markers; protection against hepatic aging damage"
  evidence_tier_estimate: T2
  newly_surfaced: true
  q_flag: Q1
  provenance_id: zh-003
  added_at: 2026-04-25T00:00:00Z

- id: zh-2026-04-25-004
  language: zh
  intervention_normalized: astragalus
  intervention_native: "黄芪甲苷IV (Astragaloside IV)"
  intervention_glossary_id: astragalus_huangqi
  source:
    title_zh: "黄芪甲苷IV通过激活Parkin介导的线粒体自噬缓解血管平滑肌细胞衰老"
    title_en: "Astragaloside IV alleviates senescence of vascular smooth muscle cells through activating Parkin-mediated mitophagy"
    authors: "(Chinese group; PubMed 35925474)"
    year: 2022
    venue: "Chinese cardiovascular pharmacology journal (PubMed-indexed)"
    url_or_doi: "PMID:35925474"
    type: abstract
  study:
    model: cell+mouse
    n: "in vitro VSMC + D-galactose-induced aging mice"
    endpoint: "Mitochondrial membrane potential; mitophagy markers; vascular SA-β-gal"
    claimed_effect: "Anti-senescence in VSMC; mitochondrial recovery in aged-mouse vasculature"
  evidence_tier_estimate: T2
  newly_surfaced: true
  q_flag: Q1
  provenance_id: zh-004
  added_at: 2026-04-25T00:00:00Z

- id: zh-2026-04-25-005
  language: zh
  intervention_normalized: astragalus
  intervention_native: "黄芪 (Astragalus membranaceus)"
  intervention_glossary_id: astragalus_huangqi
  source:
    title_zh: "黄芪能否延缓细胞衰老？2015–2025系统综述"
    title_en: "Astragalus membranaceus — Can It Delay Cellular Aging? Systematic review (2015–2025)"
    authors: "(systematic review team; PubMed 40284164)"
    year: 2026
    venue: "Systematic review (PubMed-indexed Chinese-authored)"
    url_or_doi: "PMID:40284164"
    type: abstract
  study:
    model: mixed
    n: "systematic review; multi-study"
    endpoint: "Telomere length; antioxidant capacity; senescence markers; skin photoaging"
    claimed_effect: "Pleiotropic anti-aging activity across compounds (TA-65, AS-IV, APS); telomerase activation signal"
  evidence_tier_estimate: T2
  newly_surfaced: true
  q_flag: Q1
  provenance_id: zh-005
  added_at: 2026-04-25T00:00:00Z

- id: zh-2026-04-25-006
  language: zh
  intervention_normalized: gynostemma_jiaogulan
  intervention_native: "绞股蓝 (Gynostemma pentaphyllum); damulin A/B"
  intervention_glossary_id: gynostemma_jiaogulan
  source:
    title_zh: "绞股蓝皂苷damulin A/B激活AMPK的代谢与抗衰老作用综述"
    title_en: "Botanical AMPK activators: Gynostemma pentaphyllum saponins damulin A/B in metabolic and anti-aging research"
    authors: "(Chinese phytochemistry review group)"
    year: 2024
    venue: "临床个性化医学 J Clin Personalized Med 2024;3(4):2262-2269"
    url_or_doi: "https://pdf.hanspub.org/jcpm202434_1433120447.pdf"
    type: full
  study:
    model: mixed
    n: "review summarizes small human RCTs (n≈16, n=117) plus rodent work"
    endpoint: "AMPK activation; body composition; glucose; leptin"
    claimed_effect: "AMPK activation comparable in pathway to metformin; modest metabolic improvement"
  evidence_tier_estimate: T2
  newly_surfaced: true
  q_flag: Q1
  provenance_id: zh-006
  added_at: 2026-04-25T00:00:00Z

- id: zh-2026-04-25-007
  language: zh
  intervention_normalized: lycium_goji
  intervention_native: "枸杞多糖 (Lycium barbarum polysaccharide, LBP)"
  intervention_glossary_id: lycium_goji
  source:
    title_zh: "枸杞子多糖的提取纯化、体外抗氧化及其抗衰老作用"
    title_en: "Extraction, purification, in vitro antioxidant and anti-aging effects of Lycium barbarum polysaccharides"
    authors: "王聪颖, 黄小强, 徐玥玥, et al."
    year: 2024
    venue: "食品工业科技 2024;45(19):1-8"
    url_or_doi: "https://www.sciengine.com/parse/pdf/1002-0306/DC3B2496B83042EAB75C928175D2C8E1.pdf"
    type: full
  study:
    model: cell+invertebrate
    n: "in vitro + C. elegans"
    endpoint: "DPPH/ABTS antioxidant; lifespan in C. elegans; lipofuscin"
    claimed_effect: "Antioxidant activity in vitro; modest lifespan signal in C. elegans"
  evidence_tier_estimate: T1
  newly_surfaced: true
  q_flag: Q1
  provenance_id: zh-007
  added_at: 2026-04-25T00:00:00Z

- id: zh-2026-04-25-008
  language: zh
  intervention_normalized: lycium_goji
  intervention_native: "发酵枸杞清汁"
  intervention_glossary_id: lycium_goji
  source:
    title_zh: "低糖型发酵枸杞清汁对高脂秀丽隐杆线虫的降脂及抗氧化作用"
    title_en: "Lipid-lowering and antioxidant effects of low-sugar fermented goji juice in high-fat C. elegans"
    authors: "林佳琪, 杨瑞, et al."
    year: 2025
    venue: "食品科学 Food Science 2025;46(16)"
    url_or_doi: "https://www.sciopen.com/local/article_pdf/10.7506/spkx1002-6630-20250102-005.pdf"
    type: full
  study:
    model: invertebrate
    n: "C. elegans cohorts"
    endpoint: "Lifespan; lipofuscin; locomotor capacity; lipid"
    claimed_effect: "Lifespan extension and lipid reduction in hyperlipidemic worm model"
  evidence_tier_estimate: T1
  newly_surfaced: true
  q_flag: Q1
  provenance_id: zh-008
  added_at: 2026-04-25T00:00:00Z

- id: zh-2026-04-25-009
  language: zh
  intervention_normalized: polygonum_multiflorum_heshouwu
  intervention_native: "何首乌多糖 (He Shou Wu polysaccharides)"
  intervention_glossary_id: polygonum_multiflorum_heshouwu
  source:
    title_zh: "何首乌两种多糖通过调控P53/P21通路及氨基酸代谢发挥抗衰老作用"
    title_en: "Two polysaccharides from Polygonum multiflorum exert anti-aging effects by regulating the P53/P21 pathway and amino acid metabolism"
    authors: "(Chinese group)"
    year: 2025
    venue: "International Journal of Biological Macromolecules (Feb 2025)"
    url_or_doi: "Int J Biol Macromol 2025"
    type: full
  study:
    model: mouse+cell
    n: "D-gal-induced aging mouse + cellular senescence assays"
    endpoint: "P53/P21 axis; senescence markers; metabolomics"
    claimed_effect: "Reduction in senescence markers; metabolomic shift consistent with anti-aging"
  evidence_tier_estimate: T2
  newly_surfaced: true
  q_flag: Q1
  provenance_id: zh-009
  added_at: 2026-04-25T00:00:00Z
  notes: "Hepatotoxicity caveat documented for the same compound class. Flag for Q2+ verification before any verdict."

- id: zh-2026-04-25-010
  language: zh
  intervention_normalized: ginseng_renshen
  intervention_native: "人参 / 人参皂苷 Rg1, Rb1 (Ginsenosides)"
  intervention_glossary_id: ginseng_renshen
  source:
    title_zh: "人参抗血液和心血管系统衰老作用研究新进展"
    title_en: "New Progress in Ginseng Anti-Aging Effects on Blood and Cardiovascular System"
    authors: "(Chinese review)"
    year: 2025
    venue: "Hanspub Chinese review"
    url_or_doi: "https://image.hanspub.org/html/1-1710122_22744.htm"
    type: full
  study:
    model: mixed
    n: "review; underlying lipid meta-analysis n≈1,045"
    endpoint: "Telomerase activity (Rg1); HSC aging; lipid; cardiovascular markers"
    claimed_effect: "Telomerase activation; lipid improvement; HSC anti-senescence"
  evidence_tier_estimate: T2
  newly_surfaced: true
  q_flag: Q1
  provenance_id: zh-010
  added_at: 2026-04-25T00:00:00Z
  notes: "Korean Red Ginseng (predicted #9) is partially overlapping species — keep separate intervention pages keyed by preparation; cross-link in glossary."

- id: zh-2026-04-25-011
  language: zh
  intervention_normalized: tea_polyphenols
  intervention_native: "茶多酚 (Tea polyphenols)"
  intervention_glossary_id: tea_polyphenols
  source:
    title_zh: "茶多酚通过Wnt/β-catenin通路改善2型糖尿病模型大鼠肌肉脂肪浸润延缓衰老"
    title_en: "Tea polyphenols slow aging in T2DM model rats via Wnt/β-catenin pathway and reduction of muscle fat infiltration"
    authors: "(Chinese group; CNKI-indexed)"
    year: 2026
    venue: "CNKI-indexed Chinese geriatrics journal"
    url_or_doi: "(CNKI 2026 issue, citation pending Q2+ retrieval)"
    type: abstract
  study:
    model: rat
    n: "T2DM model rats"
    endpoint: "Muscle fat infiltration; Wnt/β-catenin; sarcopenia markers"
    claimed_effect: "Reduction in fatty infiltration and sarcopenia phenotype"
  evidence_tier_estimate: T1
  newly_surfaced: false
  q_flag: Q1
  provenance_id: zh-011
  added_at: 2026-04-25T00:00:00Z
  notes: "Tea polyphenols overlap with EGCG (Round 1); record under tea_polyphenols pending glossary decision on splitting/merging entries."

- id: zh-2026-04-25-012
  language: zh
  intervention_normalized: tcm_combination_xiyuan
  intervention_native: "西苑医院抗早衰中药复方"
  intervention_glossary_id: tcm_combination_xiyuan
  source:
    title_zh: "中国中医科学院西苑医院领衔多中心随机双盲安慰剂对照早衰干预试验"
    title_en: "Multicenter randomized double-blind placebo-controlled TCM intervention trial in early-aging participants (Xiyuan Hospital lead)"
    authors: "(Xiyuan Hospital, China Academy of Chinese Medical Sciences)"
    year: 2026
    venue: "Press release / Chinese popular-science aggregators (gmw.cn / pharmcube)"
    url_or_doi: "https://m.gmw.cn/2026-02/09/content_38586237.htm"
    type: other
  study:
    model: human-rct
    n: 530
    endpoint: "Aging-symptom score; quality-of-life score; reported telomerase content"
    claimed_effect: "40–60% reduction in aging-symptom scores; 16% QoL improvement; 76.7% telomerase increase vs placebo (per press summary)"
  evidence_tier_estimate: T2
  newly_surfaced: true
  q_flag: Q1
  provenance_id: zh-012
  added_at: 2026-04-25T00:00:00Z
  notes: "STRONG CAVEAT: only press-release-level reporting located. Composite endpoint plus telomerase claim are red flags. Hold below inclusion threshold until peer-reviewed primary publication is retrieved at Q2+. Do not propose page yet."
```
