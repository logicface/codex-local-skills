---
name: neurovisus-data-pipeline
description: Use when working on AI4Pain or BioVid data ingestion, split generation, manifest building, materialized PT datasets, preprocessing assets, dataloader bugs, or sample-schema consistency. Triggers on tasks like build the dataset, regenerate splits, materialize trials, inspect processed PT files, debug data loading, check channel layout, or prepare AI4Pain fNIRS and video data.
---

# NeuroVisus Data Pipeline

Use this skill for dataset preparation and data-contract work in this repository.

## What to do first

1. Identify the dataset and artifact the user actually wants.
2. Prefer existing repo tools over ad hoc scripts.
3. Preserve the shared sample contract from `docs/baseline_protocol.md`.

## Shared contract

- `neurovisus/data/ai4pain.py` and `neurovisus/data/biovid.py` should expose the same core sample fields.
- Training, evaluation, and baseline code should consume that shared dictionary rather than dataset-specific side channels.
- Sampling policy should stay centralized in `neurovisus/data/sampling.py` and `neurovisus/data/transforms.py`.

## Working rules

- For AI4Pain preprocessing, start with the existing orchestration entrypoint before editing lower-level builders.
- For split regeneration, prefer the dedicated `tools/generate_*split*.py` scripts.
- For processed PT or manifest issues, inspect small artifacts first instead of rebuilding the full dataset immediately.
- When changing path handling, account for both Windows-style paths and WSL-style paths already used in the repo.
- When changing dataset output format, state the compatibility impact on training and evaluation.

## References

- Read `references/workflow.md` for the path map, standard commands, and validation checklist.
