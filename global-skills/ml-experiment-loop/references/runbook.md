# ML Experiment Runbook

## Baseline ladder

Prefer this sequence:

1. zero-cost or heuristic baseline
2. smoke training path that proves the loop closes
3. simple single-input or single-feature baseline
4. stronger fusion or architecture change only after the above are stable

## Data checks

Before major rebuilds, confirm:

- schema or feature shape
- split policy
- label definition
- missingness or masking behavior
- path assumptions

Inspect a small sample first when possible.

## Validation path

Use staged validation:

1. static inspection
2. dry-run, sample batch, or loader check
3. smoke training
4. targeted full run

## Comparison checklist

Only compare runs when these are aligned:

- same dataset or explicitly stated transfer setup
- same split policy
- same checkpoint selection rule
- same metric definitions
- same preprocessing contract

## Failure signatures

Common signatures to inspect:

- prediction collapse to one class or narrow band
- unstable or misleading checkpoint selection
- split leakage or mismatch
- silent preprocessing drift
- gain on one metric with regression on the main task metric

