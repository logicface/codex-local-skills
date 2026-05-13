---
name: ml-experiment-loop
description: Use when the user wants a machine learning workflow that spans data preparation, preprocessing, training, evaluation, baseline comparison, checkpoint inspection, and post-run analysis. Triggers on requests like clean the data and train a model, run a smoke experiment, compare against baseline, debug a training regression, or analyze why a run failed.
---

# ML Experiment Loop

Use this skill for multi-step ML work that spans data, training, evaluation, and analysis.

## Objective

Move from a broad ML request to a reproducible experiment loop:

1. clarify the task, dataset, and target metric
2. prepare or validate the data path
3. define the smallest useful baseline
4. implement the smallest model or config change
5. run smoke validation before a long experiment
6. analyze metrics, checkpoints, and failure modes

## Core rules

- Do not start with the fanciest model. Establish a baseline ladder first.
- Prefer config-only changes when they can answer the question.
- Treat data schema and split policy as first-class experimental variables.
- Report task-relevant metrics, not only the most flattering metric.
- Compare runs only when dataset, split, checkpoint policy, and metric definitions are aligned.

## Working pattern

- Inspect the current data contract before changing preprocessing.
- If a bug might be data-driven, inspect small artifacts before rebuilding everything.
- Use a smoke path before long training whenever feasible.
- Track where outputs, checkpoints, and logs are written.
- If a run collapses or regresses, inspect distributional symptoms and checkpoint behavior before rewriting the model.

## Outputs

Unless the user asks otherwise, return:

- baseline or starting point
- data or code changes
- validation path used
- key metrics and artifacts
- likely cause of success or failure
- next iteration

## References

- Read `references/runbook.md` for the baseline ladder and failure-analysis checklist.

