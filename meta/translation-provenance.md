# Translation Provenance Log

Every translated source cited in any intervention page or in the Round 2 paper is recorded here. Entries are append-only; corrections are made as new entries with a `supersedes:` field.

## Schema

Each entry has:

```
- id: <short-id, e.g. zh-001>
  language: <one of: zh|ja|ru|de|ko|es|fr>
  source_url_or_doi: <URL or DOI>
  source_title_native: "<title in original language>"
  source_title_en: "<title in English translation>"
  authors: "<authors verbatim>"
  year: <year>
  type: <abstract|full-text|pre-print|book-chapter|other>
  translator: <claude-opus-4-7|claude-sonnet-4-6|deepl|other>
  translation_date: <YYYY-MM-DD>
  q_flag: <Q1|Q2|Q3|Q4>
  cited_in: [<list of intervention page slugs>]
  notes: "<optional notes on uncertainty, ambiguous terms, etc.>"
  supersedes: <id, optional>
```

## Entries

(populated by `aging-ml-page-builder` and the language-sweep agents)

```yaml
- id: zh-001
  language: zh
  source_url_or_doi: "10.1007/s10787-022-00976-2"
  source_title_native: "小檗碱在中国代谢综合征患者炎症标志物上的影响：随机对照试验荟萃分析"
  source_title_en: "The effects of berberine on inflammatory markers in Chinese patients with metabolic syndrome and related disorders: a meta-analysis of randomized controlled trials"
  authors: "(multi-author meta-analysis, Chinese cohorts)"
  year: 2022
  type: abstract
  translator: claude-opus-4-7
  translation_date: 2026-04-25
  q_flag: Q1
  cited_in: []
  notes: "Sweep zh 2026-04-25 #001. Superseded by zh-001-r2 after back-translation."

- id: zh-001-r2
  language: zh
  source_url_or_doi: "10.1007/s10787-022-00976-2"
  source_title_native: "小檗碱在中国代谢综合征患者炎症标志物上的影响：随机对照试验荟萃分析"
  source_title_en: "The effects of berberine on inflammatory markers in Chinese patients with metabolic syndrome and related disorders: a meta-analysis of randomized controlled trials"
  authors: "(multi-author meta-analysis, Chinese cohorts)"
  year: 2022
  type: abstract
  translator: claude-opus-4-7
  translation_date: 2026-04-25
  q_flag: Q2
  cited_in: [berberine]
  notes: "Q1→Q2 promotion via back-translation cross-check 2026-04-25 (Anthropic Claude). Back-translation: 'Effects of berberine on inflammatory markers in Chinese metabolic syndrome patients: meta-analysis of randomized controlled trials.' No semantic mismatch."
  supersedes: zh-001

- id: zh-002
  language: zh
  source_url_or_doi: "10.1111/acel.13060"
  source_title_native: "小檗碱通过调节p16及周期蛋白延长小鼠寿命并改善细胞衰老"
  source_title_en: "Berberine ameliorates cellular senescence and extends the lifespan of mice via regulating p16 and cyclin protein expression"
  authors: "Dang Y, et al."
  year: 2020
  type: full-text
  translator: claude-opus-4-7
  translation_date: 2026-04-25
  q_flag: Q1
  cited_in: []
  notes: "Aging Cell. Sweep zh 2026-04-25 #002. Superseded by zh-002-r2 after back-translation."

- id: zh-002-r2
  language: zh
  source_url_or_doi: "10.1111/acel.13060"
  source_title_native: "小檗碱通过调节p16及周期蛋白延长小鼠寿命并改善细胞衰老"
  source_title_en: "Berberine ameliorates cellular senescence and extends the lifespan of mice via regulating p16 and cyclin protein expression"
  authors: "Dang Y, et al."
  year: 2020
  type: full-text
  translator: claude-opus-4-7
  translation_date: 2026-04-25
  q_flag: Q2
  cited_in: [berberine]
  notes: "Q1→Q2 promotion via back-translation cross-check 2026-04-25 (Anthropic Claude). Back-translation: 'Berberine prolongs mouse lifespan and ameliorates cellular senescence by regulating p16 and cyclin proteins.' No semantic mismatch."
  supersedes: zh-002

- id: zh-003
  language: zh
  source_url_or_doi: "PMID:34962345"
  source_title_native: "黄芪多糖通过自噬通路缓解肝细胞衰老"
  source_title_en: "Astragalus polysaccharide alleviated hepatocyte senescence via autophagy pathway"
  authors: "(Chinese group)"
  year: 2022
  type: abstract
  translator: claude-opus-4-7
  translation_date: 2026-04-25
  q_flag: Q1
  cited_in: []
  notes: "Sweep zh 2026-04-25 #003. Superseded by zh-003-r2 after back-translation."

- id: zh-003-r2
  language: zh
  source_url_or_doi: "PMID:34962345"
  source_title_native: "黄芪多糖通过自噬通路缓解肝细胞衰老"
  source_title_en: "Astragalus polysaccharide alleviated hepatocyte senescence via autophagy pathway"
  authors: "(Chinese group)"
  year: 2022
  type: abstract
  translator: claude-opus-4-7
  translation_date: 2026-04-25
  q_flag: Q2
  cited_in: [astragalus]
  notes: "Q1→Q2 promotion via back-translation cross-check 2026-04-25 (Anthropic Claude). Back-translation: 'Astragalus polysaccharide alleviates hepatocyte senescence through the autophagy pathway.' No semantic mismatch. Standard pharmacology terminology; 自噬通路 = autophagy pathway is unambiguous."
  supersedes: zh-003

- id: zh-004
  language: zh
  source_url_or_doi: "PMID:35925474"
  source_title_native: "黄芪甲苷IV通过激活Parkin介导的线粒体自噬缓解血管平滑肌细胞衰老"
  source_title_en: "Astragaloside IV alleviates senescence of vascular smooth muscle cells through activating Parkin-mediated mitophagy"
  authors: "(Chinese group)"
  year: 2022
  type: abstract
  translator: claude-opus-4-7
  translation_date: 2026-04-25
  q_flag: Q1
  cited_in: []
  notes: "Sweep zh 2026-04-25 #004. Superseded by zh-004-r2 after back-translation."

- id: zh-004-r2
  language: zh
  source_url_or_doi: "PMID:35925474"
  source_title_native: "黄芪甲苷IV通过激活Parkin介导的线粒体自噬缓解血管平滑肌细胞衰老"
  source_title_en: "Astragaloside IV alleviates senescence of vascular smooth muscle cells through activating Parkin-mediated mitophagy"
  authors: "(Chinese group)"
  year: 2022
  type: abstract
  translator: claude-opus-4-7
  translation_date: 2026-04-25
  q_flag: Q2
  cited_in: [astragalus]
  notes: "Q1→Q2 promotion via back-translation cross-check 2026-04-25 (Anthropic Claude). Back-translation: 'Astragaloside IV alleviates vascular smooth muscle cell senescence through activation of Parkin-mediated mitophagy.' No semantic mismatch. 黄芪甲苷IV = Astragaloside IV; Parkin/线粒体自噬 = mitophagy unambiguous."
  supersedes: zh-004

- id: zh-005
  language: zh
  source_url_or_doi: "PMID:40284164"
  source_title_native: "黄芪能否延缓细胞衰老？2015–2025系统综述"
  source_title_en: "Astragalus membranaceus — Can It Delay Cellular Aging? Systematic review (2015–2025)"
  authors: "(systematic review team)"
  year: 2026
  type: abstract
  translator: claude-opus-4-7
  translation_date: 2026-04-25
  q_flag: Q1
  cited_in: []
  notes: "Sweep zh 2026-04-25 #005. Superseded by zh-005-r2 after back-translation."

- id: zh-005-r2
  language: zh
  source_url_or_doi: "PMID:40284164"
  source_title_native: "黄芪能否延缓细胞衰老？2015–2025系统综述"
  source_title_en: "Astragalus membranaceus — Can It Delay Cellular Aging? Systematic review (2015–2025)"
  authors: "(systematic review team)"
  year: 2026
  type: abstract
  translator: claude-opus-4-7
  translation_date: 2026-04-25
  q_flag: Q2
  cited_in: [astragalus]
  notes: "Q1→Q2 promotion via back-translation cross-check 2026-04-25 (Anthropic Claude). Back-translation: 'Can Astragalus membranaceus delay cellular senescence? A systematic review (2015–2025).' No semantic mismatch. Underlying primary studies cover TA-65, AS-IV, APS — pooling heterogeneous compounds is a methodological caveat noted on the astragalus page, not a translation issue."
  supersedes: zh-005

- id: zh-006
  language: zh
  source_url_or_doi: "https://pdf.hanspub.org/jcpm202434_1433120447.pdf"
  source_title_native: "绞股蓝皂苷damulin A/B激活AMPK的代谢与抗衰老作用综述"
  source_title_en: "Botanical AMPK activators: Gynostemma pentaphyllum saponins damulin A/B in metabolic and anti-aging research"
  authors: "(Chinese phytochemistry review group)"
  year: 2024
  type: full-text
  translator: claude-opus-4-7
  translation_date: 2026-04-25
  q_flag: Q1
  cited_in: []
  notes: "J Clin Personalized Med 2024;3(4):2262-2269. Sweep zh 2026-04-25 #006."

- id: zh-007
  language: zh
  source_url_or_doi: "https://www.sciengine.com/parse/pdf/1002-0306/DC3B2496B83042EAB75C928175D2C8E1.pdf"
  source_title_native: "枸杞子多糖的提取纯化、体外抗氧化及其抗衰老作用"
  source_title_en: "Extraction, purification, in vitro antioxidant and anti-aging effects of Lycium barbarum polysaccharides"
  authors: "王聪颖, 黄小强, 徐玥玥, et al."
  year: 2024
  type: full-text
  translator: claude-opus-4-7
  translation_date: 2026-04-25
  q_flag: Q1
  cited_in: []
  notes: "食品工业科技 2024;45(19):1-8. Sweep zh 2026-04-25 #007."

- id: zh-008
  language: zh
  source_url_or_doi: "https://www.sciopen.com/local/article_pdf/10.7506/spkx1002-6630-20250102-005.pdf"
  source_title_native: "低糖型发酵枸杞清汁对高脂秀丽隐杆线虫的降脂及抗氧化作用"
  source_title_en: "Lipid-lowering and antioxidant effects of low-sugar fermented goji juice in high-fat C. elegans"
  authors: "林佳琪, 杨瑞, et al."
  year: 2025
  type: full-text
  translator: claude-opus-4-7
  translation_date: 2026-04-25
  q_flag: Q1
  cited_in: []
  notes: "食品科学 2025;46(16). Sweep zh 2026-04-25 #008."

- id: zh-009
  language: zh
  source_url_or_doi: "Int J Biol Macromol 2025"
  source_title_native: "何首乌两种多糖通过调控P53/P21通路及氨基酸代谢发挥抗衰老作用"
  source_title_en: "Two polysaccharides from Polygonum multiflorum exert anti-aging effects by regulating the P53/P21 pathway and amino acid metabolism"
  authors: "(Chinese group)"
  year: 2025
  type: full-text
  translator: claude-opus-4-7
  translation_date: 2026-04-25
  q_flag: Q1
  cited_in: []
  notes: "Sweep zh 2026-04-25 #009. Hepatotoxicity caveat for compound class."

- id: zh-010
  language: zh
  source_url_or_doi: "https://image.hanspub.org/html/1-1710122_22744.htm"
  source_title_native: "人参抗血液和心血管系统衰老作用研究新进展"
  source_title_en: "New Progress in Ginseng Anti-Aging Effects on Blood and Cardiovascular System"
  authors: "(Chinese review)"
  year: 2025
  type: full-text
  translator: claude-opus-4-7
  translation_date: 2026-04-25
  q_flag: Q1
  cited_in: []
  notes: "Sweep zh 2026-04-25 #010."

- id: zh-011
  language: zh
  source_url_or_doi: "(CNKI 2026 issue, citation pending Q2+ retrieval)"
  source_title_native: "茶多酚通过Wnt/β-catenin通路改善2型糖尿病模型大鼠肌肉脂肪浸润延缓衰老"
  source_title_en: "Tea polyphenols slow aging in T2DM model rats via Wnt/β-catenin pathway and reduction of muscle fat infiltration"
  authors: "(Chinese group; CNKI-indexed)"
  year: 2026
  type: abstract
  translator: claude-opus-4-7
  translation_date: 2026-04-25
  q_flag: Q1
  cited_in: [egcg]
  notes: "Sweep zh 2026-04-25 #011. Citation needs primary CNKI retrieval. Cited in egcg multilingual page 2026-04-25 as non-load-bearing evidence (verdict unchanged); held at Q1 — not promoted because primary record could not be verified, only the title is linguistically clean. Glossary: 茶多酚 = tea polyphenols (catechin-rich extract; EGCG is dominant single component), mapped to egcg page with class-vs-isolate caveat."

- id: zh-012
  language: zh
  source_url_or_doi: "https://m.gmw.cn/2026-02/09/content_38586237.htm"
  source_title_native: "中国中医科学院西苑医院领衔多中心随机双盲安慰剂对照早衰干预试验"
  source_title_en: "Multicenter randomized double-blind placebo-controlled TCM intervention trial in early-aging participants (Xiyuan Hospital lead)"
  authors: "(Xiyuan Hospital, China Academy of Chinese Medical Sciences)"
  year: 2026
  type: other
  translator: claude-opus-4-7
  translation_date: 2026-04-25
  q_flag: Q1
  cited_in: []
  notes: "Sweep zh 2026-04-25 #012. Press-release only; primary publication not yet located. Do not cite in verdict."

- id: es-fr-001
  language: es
  source_url_or_doi: "10.4067/s0034-98872026000200237"
  source_title_native: "Activación Farmacológica de ERRα/β/γ como Mimético del Ejercicio: Aplicaciones Terapéuticas Potenciales"
  source_title_en: "Pharmacological Activation of ERRα/β/γ as an Exercise Mimetic: Potential Therapeutic Applications"
  authors: "de Souza-Lima J, Astrosa-Martin BD, Galaz-Rodríguez CA, Silva-Bernal JE, Orellana-Pizarro LI, Mena-Díaz CA"
  year: 2026
  type: abstract
  translator: claude-opus-4-7
  translation_date: 2026-04-25
  q_flag: Q1
  cited_in: []
  notes: "Sweep es+fr 2026-04-25 #4 (first non-zero ES yield). Rev Med Chil systematic review of pan-ERR agonists as exercise mimetics; PubMed-indexed publisher-provided English abstract used as translation surface. Glossary: 'mimético del ejercicio' = exercise mimetic; ERRα/β/γ = estrogen-related receptors α/β/γ (orphan nuclear receptors). Newly surfaced intervention class (SLU-PP-332/SLU-PP-915) — not in Round 1 intervention pages."
```

## Glossary cross-references

The glossary lives at `meta/glossary.md` (created on first sweep). Entries here referencing translated terms (e.g., 黄芪 → Huang Qi → Astragalus membranaceus) get a `glossary:` field pointing to the glossary entry.
