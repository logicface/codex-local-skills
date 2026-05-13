---
name: neurovisus-training-regression
description: Use when changing experiment configs, launching or debugging training, running smoke tests, comparing baselines, inspecting checkpoints, or editing training and evaluation logic in NeuroVisus. Triggers on train, smoke test, regression baseline, checkpoint, MAE/RMSE/QWK, overnight run, config tuning, eval mismatch, or post-training validation tasks.
---

# NeuroVisus Training And Regression

Use this skill for model training, config changes, regression baselines, and checkpoint-driven evaluation.

## Default approach

1. Start from the baseline ladder and current config rather than inventing a new protocol.
2. Prefer the smallest run that can falsify the change.
3. Keep comparisons on regression metrics comparable across runs.

## Working rules

- Treat `docs/baseline_protocol.md` as the current protocol unless the user explicitly wants to revise it.
- When changing models, losses, or configs, run a smoke path before a long run when feasible.
- Prefer existing launch wrappers and comparison scripts over manual one-off commands.
- Report MAE, RMSE, Spearman, QWK, and ODI-related metrics before accuracy-only claims.
- If a run depends on overnight orchestration or publishing, use the existing postrun watcher flow instead of building a parallel mechanism.
- When a config edit changes outputs or checkpoint selection, call out the comparability impact.

## References

- Read `references/runbook.md` for the baseline ladder, file map, and common commands.
