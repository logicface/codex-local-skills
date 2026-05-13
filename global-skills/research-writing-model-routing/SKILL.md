---
name: research-writing-model-routing
description: Use when the user asks which model or workflow is best for writing tasks such as translation, polishing, reviewing, OCR-heavy PDF reading, or figure planning. Triggers on requests like which model should I use for paper polishing, choose the right workflow for translation and review, or route this writing task to the right skill and model setup.
---

# Research Writing Model Routing

Use this skill to recommend the right model and workflow for research writing tasks.

## Core rules

- Route by task type, not hype.
- Prefer the simplest model or workflow that reliably solves the task.
- Distinguish between text-only editing, long-context review, PDF-heavy reading, and multimodal visual planning.
- If the environment hides exact model availability, recommend by capability class instead of pretending access details.

## Routing dimensions

- translation or bilingual rewrite
- grammar or style polishing
- high-threshold reviewer critique
- long PDF or appendix reading
- table or experiment interpretation
- figure planning or multimodal visual generation

## Skill-routing hints

- General polishing or rewriting: prefer `research-writing-polish`, `research-writing-translation`, or `research-writing-humanize`.
- Nature-family polishing, British English, overclaim auditing, or house-style control: prefer `nature-polishing`.
- General figure planning, titles, or chart selection: prefer `research-writing-visuals`.
- Nature-grade multi-panel production figures or export QA: prefer `nature-figure`.
- Data Availability, repository planning, FAIR checks, or dataset citation for journal submission: prefer `nature-data`.
- Chinese paper-to-presentation workflows for journal club or group meeting: prefer `nature-paper2ppt`.

## Output expectations

- recommend the capability class or concrete model if known
- explain why it matches the task
- note tradeoffs in cost, speed, context length, or multimodal support
- suggest the matching local skill when relevant
