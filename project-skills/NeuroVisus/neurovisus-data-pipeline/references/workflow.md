# Data Workflow

## Path map

- Raw and processed dataset logic: `neurovisus/data/`
- Shared training contract: `docs/baseline_protocol.md`
- AI4Pain pipeline entrypoint: `tools/run_ai4pain_data_pipeline.py`
- Trial builder: `tools/build_ai4pain_trials.py`
- Trial materializer: `tools/materialize_ai4pain_trials.py`
- Split generators: `tools/generate_ai4pain_split.py`, `tools/generate_biovid_subject_split.py`, `tools/generate_runs_split.py`
- Inspection and checks: `tools/inspect_data.py`, `tools/check_processed_pt.py`, `tools/check_stats.py`
- Asset builders: `tools/build_ai4pain_fnirs_*`, `tools/build_ai4pain_hbo*.py`

## Preferred commands

Run the one-click AI4Pain pipeline before inventing a new orchestrator:

```powershell
python tools/run_ai4pain_data_pipeline.py --dry-run
python tools/run_ai4pain_data_pipeline.py
```

Inspect data artifacts before large rebuilds:

```powershell
python tools/check_processed_pt.py
python tools/inspect_data.py
python tools/check_stats.py
```

Regenerate splits with the dedicated tools rather than embedding split logic elsewhere.

## Validation checklist

- Confirm the requested split names and output root.
- Confirm manifest and materialized dataset locations.
- Verify at least one sample has the expected fields used by training and eval.
- If a schema changes, verify downstream loaders and collate code still match.
- If the request is exploratory, use dry-run or a narrow subset first.
