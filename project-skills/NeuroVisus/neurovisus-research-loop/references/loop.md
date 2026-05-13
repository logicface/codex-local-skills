# Research Loop Protocol

## Stage 1: Retrieval

Goal: collect only enough current evidence to define a tractable direction.

Preferred source order:

1. Official challenge papers or project pages
2. Peer-reviewed papers
3. arXiv or equivalent preprints
4. Repository docs and local reference PDFs

For this repo, inspect:

- `references/pdfs/ai4pain_baselines/`
- `docs/ai4pain_baseline.md`
- `docs/baseline_protocol.md`
- `docs/experiments/`

Capture:

- exact paper or artifact title
- publication year and date if recent
- task and dataset
- claimed gain
- what changed: data, architecture, loss, training protocol, or evaluation

## Stage 2: Topic selection

Rank candidate ideas with a compact rubric:

- scientific value: does it answer a real modeling or clinical question
- codebase fit: can it be implemented with existing datasets and outputs
- implementation cost: config-only, small code patch, or major refactor
- evaluation clarity: can success be judged on current metrics
- risk of confounding: how likely the gain depends on hidden protocol changes

Prefer one of these classes first:

- config or training objective changes
- modality fusion or calibration changes
- stronger baseline reproduction
- data contract cleanup that unlocks cleaner comparisons

Avoid starting with:

- entirely new data dependencies
- large architectural rewrites without a smoke path
- claims that require unavailable labels or modalities

## Stage 3: Code mapping

Before editing, map the idea onto concrete repo files:

- configs: `configs/`
- training and eval: `neurovisus/train.py`, `neurovisus/eval.py`
- losses and metrics: `neurovisus/losses.py`, `neurovisus/metrics.py`
- models: `neurovisus/models/`
- data: `neurovisus/data/`
- orchestration and analysis: `tools/`

State the minimum patch surface and the validation path.

## Stage 4: Data and implementation

- Prefer existing tools and scripts over ad hoc code.
- Keep data schema changes backward compatible when possible.
- If the experiment can be expressed by config only, avoid code edits.
- If code edits are required, keep the change local and testable.

## Stage 5: Run strategy

Use a staged run plan:

1. static inspection or dry-run
2. smoke train or narrow subset
3. targeted full run only after the smoke path is credible

Compare against:

- the local baseline ladder from `docs/baseline_protocol.md`
- the most relevant recent run under `docs/experiments/auto/` or `outputs/`

## Stage 6: Analysis

For each run, separate:

- measured outcomes
- failure signatures
- interpretation
- next action

Measured outcomes should cite exact metrics and checkpoint policy.

Failure signatures to inspect:

- collapsed prediction histograms
- unstable checkpoint selection
- split mismatch
- missing data or modality masking issues
- gain that appears only on accuracy and not regression metrics

## Output format

When running the full loop, structure results as:

1. topic choice and why it won
2. concrete repo changes
3. experiment executed
4. metrics and artifacts
5. interpretation
6. next iteration or stop decision
