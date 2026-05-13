---
name: neurovisus-experiment-analysis
description: Use when analyzing completed runs, summarizing experiments, generating dashboards or paper figures, auditing collapse or disagreement patterns, or publishing postrun results. Triggers on analyze this run, compare runs, summarize experiments, make plots, dashboard, paper figure, why did training collapse, publish results, or review docs/experiments outputs.
---

# NeuroVisus Experiment Analysis

Use this skill for post-training analysis, figure generation, run comparison, and experiment writeups.

## Default approach

1. Resolve the exact run directory or config first.
2. Prefer existing analysis and plotting scripts over custom notebooks or one-off parsing.
3. Separate measured findings from hypotheses.

## Working rules

- Use the auto-analysis and publishing flow already present in the repo when it matches the task.
- When comparing runs, anchor the comparison to the same dataset, split policy, and checkpoint logic.
- Look for collapse signatures in prediction histograms and checkpoint summaries before concluding a model is broken.
- Keep scientific claims tied to concrete metrics and generated artifacts.
- When updating experiment markdown under `docs/experiments/`, keep the narrative reproducible from the recorded outputs.

## References

- Read `references/analysis.md` for file locations, common scripts, and the review checklist.
