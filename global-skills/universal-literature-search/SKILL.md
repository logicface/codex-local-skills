---
name: universal-literature-search
description: Use when the user asks for literature retrieval, paper search, recent studies, evidence mapping, annotated bibliography, related work, systematic scan, seminal papers, review articles, or cross-disciplinary academic sources in any field. Triggers on requests like search the literature, find papers, retrieve recent work, do a literature review, collect references, compare studies, or gather evidence across medicine, computer science, engineering, biology, economics, psychology, education, law, or social science.
---

# Universal Literature Search

Use this skill for cross-disciplinary academic literature retrieval and evidence mapping.

## Core rules

- Never invent papers, authors, venues, dates, or findings.
- For recent or fast-moving topics, use current sources and report exact dates.
- Prefer primary sources: publisher pages, official abstracts, conference or journal pages, PubMed, arXiv, DOI landing pages, or institutional repositories.
- Treat preprints as preprints. Do not present them as peer-reviewed unless verified.
- Match source quality to the field. Medicine and clinical questions require stricter source standards than exploratory CS trend scans.

## Default workflow

1. Define the research question, population or problem, and the comparison axis if one exists.
2. Build keyword sets: core terms, synonyms, abbreviations, old and new terminology.
3. Search field-appropriate sources first, then broaden only if recall is poor.
4. Screen for direct relevance, date, study type, and evidence strength.
5. Return a compact evidence map rather than a raw link dump.

## Output expectations

Unless the user asks otherwise, provide:

- a one-sentence search framing
- the search terms or logic used
- a short list of the most relevant papers or sources
- for each item: title, year, source, why it matters, and any obvious caveat
- a brief synthesis of what the literature currently suggests
- gaps, disagreements, or next-search directions

## Evidence standards by field

- Medicine, clinical science, epidemiology, and public health: prioritize systematic reviews, guidelines, randomized trials, cohort studies, PubMed-indexed records, and major journals; treat medRxiv and similar servers cautiously.
- Computer science and AI: use official conference proceedings, arXiv, journal pages, and project or repository pages as supplements, not substitutes for the paper.
- Biology and neuroscience: prioritize PubMed, journal pages, DOI records, and curated databases; treat wet-lab protocol claims cautiously if only available as preprints.
- Economics, management, psychology, education, and social science: prefer journal articles, working paper series with clear institutional provenance, and review papers; pay attention to dataset, identification strategy, and sample limits.
- Law and policy: distinguish scholarly commentary, case law, statute, regulation, and policy analysis; do not mix these categories casually.

## Working rules

- If the user asks for the latest or most recent literature, browse and state the search date explicitly.
- If the user asks for a review or evidence summary, rank by evidence strength rather than novelty alone.
- If the topic is interdisciplinary, separate the literature by field before synthesizing.
- If the query is underspecified, make a narrow reasonable assumption and say what you assumed.
- If paywalled full text is unavailable, use the abstract and official metadata rather than guessing details.

## References

- Read `references/source-map.md` for source priority by discipline and query templates.

