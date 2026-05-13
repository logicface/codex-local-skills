---
name: research-loop
description: Use when the user wants an end-to-end research workflow: retrieve literature, choose a topic or hypothesis, map it to a project, implement the smallest credible change, run a validation experiment, and analyze the outcome. Triggers on requests like search papers and pick a direction, turn the literature into an experiment, propose and test a hypothesis, or iterate to the next experiment.
---

# Research Loop

Use this skill when the task spans multiple research stages rather than a single isolated answer or code edit.

## Objective

Convert a broad research request into a reproducible loop:

1. Retrieve evidence.
2. Select a feasible topic or hypothesis.
3. Map it onto the current project.
4. Implement the smallest credible change.
5. Run the smallest credible validation.
6. Analyze the result and decide whether to continue.

## Core rules

- Do not jump from literature directly to a long experiment. Insert a feasibility gate.
- Prefer ideas that fit the current repository, data, and evaluation surface.
- Rank candidate directions by novelty, executability, evaluation clarity, and confounding risk.
- Separate measured outcomes from interpretation and speculation.
- If the user asks for "automatic" work, proceed through the loop without unnecessary confirmation unless a decision is materially ambiguous.

## Working pattern

- For literature retrieval, use current primary sources and cite dates for recent work.
- For project mapping, identify the smallest patch surface before editing.
- For validation, prefer quick checks, smoke runs, or narrow slices before full runs.
- For results, report metrics, artifacts, and failure signatures before proposing the next step.
- If the first idea is not locally executable, reject it explicitly and move to the next-best direction.

## Outputs

Unless the user asks otherwise, structure the result as:

1. chosen direction and why it won
2. concrete repo changes or experiment plan
3. validation executed
4. results and artifacts
5. interpretation
6. next iteration or stop decision

## References

- Read `references/loop.md` for the stage-by-stage protocol and scoring rubric.

