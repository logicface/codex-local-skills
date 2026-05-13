# Decision Rubric

## 1. Outcome taxonomy

Classify the current evidence into one of four states before proposing changes:

- `credible gain`: beats the relevant baseline on the main metric with aligned split, checkpoint rule, and preprocessing
- `ambiguous movement`: some metrics improve but the main decision signal is weak or protocol alignment is unclear
- `likely regression`: the main metric degrades or controls dominate the proposed method
- `invalid evidence`: run quality, split, missing artifacts, or dirty-worktree contamination makes the result unsafe to interpret

Do not skip this classification step.

## 2. Evidence strength

Use this ranking when assigning confidence:

1. aligned main-task metrics against the correct baseline
2. repeated behavior across seeds or runs
3. compatible checkpoint and loss curves
4. contract audits, split audits, and preprocessing checks
5. anecdotal plots or one-off qualitative observations

Weak evidence should force cheaper next steps.

## 3. Prioritization rubric

Score candidate next experiments against:

- `discriminative power`: does it separate two plausible explanations
- `cost`: config-only, small patch, or major rewrite
- `baseline value`: does it strengthen the baseline ladder
- `confounding risk`: how many variables move at once
- `publication value`: does it matter if it works

Prefer high discriminative power and low confounding first.

## 4. Next-step menu by failure signature

### Prediction collapse or narrow output band

Prefer:

- sanity-check labels and scaling
- inspect loss weights and class balance
- run a smaller smoke path with prediction histograms
- compare against a simpler baseline

### Gain on side metric but not on main task metric

Prefer:

- verify metric definitions and checkpoint rule
- compare under one fixed selection rule
- test whether the proposed change only improves calibration or only rank ordering

### Improvement disappears against a matched control

Prefer:

- isolate the smallest unique ingredient
- rerun with one-factor ablation
- downgrade the claim if the control explains the gain

### Dirty worktree or broad local changes

Prefer:

- separate analysis from code claims
- narrow the diff
- rerun only after the experimental surface is controlled

## 5. Output template

Use this compact shape when the user wants a direct plan:

1. `Current verdict`
2. `Why this verdict`
3. `Most likely cause class`
4. `Next experiment A` and why it is first
5. `Next experiment B`
6. `Next experiment C`
7. `Stop or rollback trigger`
