# codex-local-skills

This repository snapshots the local Codex skills from this machine into a standalone git repository.

The published repository includes the actual skill content, including `SKILL.md`, references, helper scripts, and bundled assets where present.

## Scope

- `global-skills/`: user-managed global skills copied from `C:\Users\Administrator\.codex\skills`
- `project-skills/NeuroVisus/`: project-specific skills copied from `E:\NeuroVisus\.agents\skills`

## Maintenance

- `scripts/sync-from-local.ps1`: refresh the exported skill folders from the current machine
- `scripts/refresh-and-push.ps1`: run the sync, create a git commit when changes exist, and optionally push and tag

Example:

```powershell
.\scripts\refresh-and-push.ps1 -CommitMessage "Sync local Codex skills" -Tag v0.1.0
```

## Explicit Exclusions

The following directories are intentionally excluded because they are system-managed runtime content rather than user-maintained skills:

- `.system`
- `codex-primary-runtime`

## Current Skill Inventory

### Global Skills

- `doc`
- `experiment-postrun-review`
- `huggingface-datasets`
- `huggingface-papers`
- `huggingface-tool-builder`
- `huggingface-trackio`
- `jupyter-notebook`
- `karpathy-guidelines`
- `ml-experiment-loop`
- `nature-data`
- `nature-figure`
- `nature-paper2ppt`
- `nature-polishing`
- `pdf`
- `research-loop`
- `research-writing-experiment-analysis`
- `research-writing-humanize`
- `research-writing-length-control`
- `research-writing-model-routing`
- `research-writing-polish`
- `research-writing-redline-review`
- `research-writing-translation`
- `research-writing-visuals`
- `universal-literature-search`

### NeuroVisus Project Skills

- `neurovisus-data-pipeline`
- `neurovisus-experiment-analysis`
- `neurovisus-research-loop`
- `neurovisus-training-regression`

## Notes

- This repository is a portable export of local skill definitions.
- Some skills encode machine-specific or project-specific assumptions and should be reviewed before reuse elsewhere.
- Source provenance is tracked on a best-effort basis in `SOURCES.md`.
- This repository intentionally does not declare a blanket top-level license yet because it aggregates mixed-origin content. Review `NOTICE.md` and any per-skill license files before redistribution.
