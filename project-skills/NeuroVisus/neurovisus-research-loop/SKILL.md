---
name: neurovisus-research-loop
description: Use when the user wants an end-to-end research loop in NeuroVisus: literature retrieval, topic selection, hypothesis generation, code changes, data cleaning or rebuilding, model runs, and result analysis. Triggers on requests like automatically search papers, pick a direction, implement the idea, clean the data, run experiments, compare baselines, analyze results, or iterate on the next experiment.
---

# NeuroVisus Research Loop

Use this skill when the task spans multiple research stages rather than a single local edit.

## Objective

Convert a broad research request into a reproducible loop:

1. Retrieve evidence.
2. Choose a feasible topic or hypothesis.
3. Map the idea onto this codebase.
4. Implement the smallest credible change.
5. Run the smallest credible experiment.
6. Analyze the result and decide whether to continue.

## Stage rules

- Do not jump from papers directly to a full long-run experiment. Insert a feasibility gate.
- Prefer ideas that can be expressed as a small config, loss, data, or architecture delta in the current repo.
- Topic selection must balance novelty against local executability. A weak but runnable idea is often more useful than a broad but underspecified one.
- For literature retrieval or claims about the latest work, use current primary sources and cite dates.
- For coding, data, training, and analysis, delegate to the existing project workflows instead of creating parallel conventions.

## Decision policy

- If the user asks for "automatic" work, proceed through the loop without unnecessary confirmation unless a choice is materially ambiguous.
- If multiple research directions are plausible, rank them by expected value, implementation cost, and evaluation clarity.
- If the repo or data cannot support a proposed direction, reject it explicitly and choose a narrower one.
- If the first experiment fails, report whether the failure is due to data, implementation, optimization, or hypothesis weakness before proposing the next step.

## Use the local project workflows

- For dataset preparation or loader issues, use `neurovisus-data-pipeline`.
- For configs, training, baselines, and checkpoints, use `neurovisus-training-regression`.
- For completed runs, plots, collapse checks, and summaries, use `neurovisus-experiment-analysis`.

## References

- Read `references/loop.md` for the stage-by-stage protocol and topic scoring rubric.
