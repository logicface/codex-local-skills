---
name: neurovisus-personal-direction-scout
description: Use when the user wants NeuroVisus to suggest personal research directions after understanding the lab's main line, current codebase, accessible data, and publication goals. Triggers on requests like propose my own direction in this project, map the group's main topic into a personal niche, find 3 to 5 feasible thesis directions from NeuroVisus, or build a 3-month and 6-month research roadmap from the current repo.
---

# NeuroVisus Personal Direction Scout

Use this skill when the user is not just asking for the next experiment, but for a personal expansion line that can grow from the current NeuroVisus workstream.

## Objective

Turn the lab-level direction plus the current repository into a ranked personal direction map:

1. infer the active lab and repo spine
2. identify the user's likely leverage and constraints
3. generate feasible personal sub-directions
4. rank them by distinctiveness, executability, and paper path
5. recommend a primary line, a backup line, and a short roadmap

## Core rules

- Distinguish `group service work` from `personal claim line`. A useful lab task is not automatically a strong thesis direction.
- Prefer directions that reuse the current data, metrics, and code surface before suggesting new data dependencies.
- A direction must have a plausible first experiment in this repository, not just an attractive title.
- Rank novelty against local executability. A weaker but runnable direction is usually better than a broad but blocked one.
- Separate `what can be published`, `what can be finished`, and `what is only interesting on paper`.
- If the direction depends on unavailable labels, modalities, ethics access, or external infrastructure, flag that early.

## Required local anchors

Start from the current repository evidence before proposing directions:

- `docs/ai4pain_baseline.md`
- `docs/baseline_protocol.md`
- `docs/experiments/`
- `BASELINE_SESSION_HANDOFF.md` when baseline continuity matters
- `configs/`
- `tools/night_train_regression.sh`
- `tools/postrun_watch_and_publish.py`

## Direction classes to consider

Unless the user constrains the scope, search across:

- stronger and cleaner baselines
- multimodal fusion or reliability modeling
- data contract or label-quality driven directions
- calibration, disagreement, or uncertainty directions
- clinically interpretable analysis or deployment-facing simplifications

## Output

Unless the user asks otherwise, return:

1. inferred lab spine
2. 3 to 5 candidate personal directions
3. one primary recommendation and one backup
4. first experiment for the primary line
5. 3-month roadmap
6. 6-month roadmap

## References

- Read `references/scouting-rubric.md` for the ranking rubric, direction template, and roadmap format.
