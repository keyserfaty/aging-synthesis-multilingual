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
# entries appear here after the first sweep
```

## Glossary cross-references

The glossary lives at `meta/glossary.md` (created on first sweep). Entries here referencing translated terms (e.g., 黄芪 → Huang Qi → Astragalus membranaceus) get a `glossary:` field pointing to the glossary entry.
