---
name: research-writing-translation
description: Use when the user wants academic translation or rewrite across Chinese and English, especially for paper paragraphs, LaTeX fragments, and Word-ready Chinese prose. Triggers on requests like translate Chinese draft to paper English, translate English LaTeX to Chinese, rewrite Chinese notes into academic prose, or preserve formulas and LaTeX while translating.
---

# Research Writing Translation

Use this skill for academic translation and cross-language rewriting.

## Modes

- Chinese draft to English paper prose
- English LaTeX to readable Chinese
- Chinese draft to polished Chinese academic prose

## Core rules

- Preserve technical meaning, equations, symbols, and experimental details.
- Do not hallucinate missing content, citations, or claims.
- Match the output medium: LaTeX stays LaTeX-aware; Word-targeted Chinese stays plain text.
- Prefer paragraph form over bullet lists unless the user explicitly wants list output.

## Working pattern

- If the input is Chinese and the target is English paper prose, produce concise academic English and optionally a Chinese back-translation for checking.
- If the input is English LaTeX and the target is Chinese understanding, remove distracting citation or label commands and translate the content faithfully.
- If the input is fragmented Chinese notes, reorganize them into one coherent academic paragraph and briefly explain the logic reconstruction.

## Style rules

- Use standard academic wording rather than ornate vocabulary.
- Avoid unnecessary emphasis formatting.
- Keep tense and terminology consistent inside the passage.
- For Chinese output, use publication-grade formal written Chinese instead of spoken style.

