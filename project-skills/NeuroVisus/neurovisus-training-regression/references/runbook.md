# Training Runbook

## Core files

- Training loop: `neurovisus/train.py`
- Evaluation entrypoint: `neurovisus/eval.py`
- Baselines: `neurovisus/baselines.py`
- Metrics and losses: `neurovisus/metrics.py`, `neurovisus/losses.py`
- Model families: `neurovisus/models/`
- Configs: `configs/`
- Overnight launcher: `tools/night_train_regression.sh`
- Baseline and regression helpers: `tools/run_ai4pain_official_regression_baseline.py`, `tools/compare_regression_baseline.py`
- Postrun watcher: `tools/postrun_watch_and_publish.py`

## Baseline ladder

From `docs/baseline_protocol.md`:

1. Zero-cost baseline.
2. Smoke train plus eval to verify the full loop.
3. Single-modality baseline.
4. Simple fusion baseline.

Use this ladder before adding more model complexity whenever possible.

## Preferred commands

Baseline:

```powershell
python -m neurovisus.baselines --config configs/<dataset>_baseline.yaml --subset val
```

Training:

```powershell
python -m neurovisus.train --config configs/<config>.yaml
```

Evaluation:

```powershell
python -m neurovisus.eval --config configs/<config>.yaml --checkpoint <ckpt>
```

Overnight run through the repo wrapper when that flow is intended:

```bash
bash tools/night_train_regression.sh configs/<config>.yaml
```

## Validation checklist

- Confirm the config path and the expected output name.
- Check whether the change should be smoke-tested before a long run.
- Verify metrics from the same split and checkpoint policy.
- If a run regresses, compare against the latest accepted baseline rather than an arbitrary prior run.
- If reporting success, include where the artifacts were written.
