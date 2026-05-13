---
name: experiment-next-step-planner
description: Use when the user wants the next experiment planned from completed run evidence rather than just a results summary. Triggers on requests like analyze the latest run and decide what to change next, prioritize the next ablations after these results, turn experiment outcomes into the next plan, or automatically choose the next modification after training.
---

# Experiment Next-Step Planner

Use this skill after one or more runs have completed and the real task is to decide the next experiment, not merely describe the last one.

## Objective

Turn completed run evidence into a ranked next-step plan:

1. resolve the relevant run or run set
2. compare against the correct baseline and protocol
3. classify the result as credible gain, ambiguous movement, likely regression, or invalid evidence
4. localize the most likely cause class
5. recommend the smallest next experiment that reduces uncertainty

## Core rules

- Evidence before theory. Do not explain success or failure without pointing to recorded metrics, config deltas, or contract checks.
- If causal uncertainty is high, prefer the cheapest discriminative follow-up over a large rewrite.
- Protect the baseline ladder. Do not recommend a more complex model before the simpler comparison is settled.
- Prefer config-only or narrow code changes when they can answer the question.
- Separate `real gain`, `measurement artifact`, `optimization issue`, `data contract issue`, and `evaluation mismatch`.
- A single flattering metric is not enough if the main task metric, checkpoint rule, or split policy disagrees.

## Minimum evidence surface

- config used for the run
- summary metrics and history
- checkpoint selection rule
- closest valid baseline or control
- current worktree or code delta if the change is still local
- any contract, split, or preprocessing audit artifact

## Cause classes

Map the result primarily into one or more of these buckets:

- `data or split issue`
- `label or target mismatch`
- `optimization or regularization issue`
- `architecture or fusion issue`
- `calibration or post-processing issue`
- `evaluation or checkpoint issue`
- `code contamination or dirty worktree risk`
- `hypothesis weakness`

## Output

Unless the user asks otherwise, return:

1. verdict on the current run
2. strongest supporting signals
3. most likely cause class with evidence strength
4. ranked next 3 experiments
5. stop or rollback condition

The first recommended experiment should usually be the cheapest discriminative step, not the most ambitious idea.

## References

- Read `references/decision-rubric.md` for the outcome taxonomy, prioritization rubric, and next-step menu.
