# Postrun Checklist

## Outcome classification

Use three buckets:

- success signals
- failure signals
- unresolved risks

Do not collapse them into a single flattering verdict when evidence is mixed.

## Common failure signatures

- prediction collapse or narrow prediction histograms
- no gain over majority baseline or simpler reference path
- config contract violations
- modality branch present but carrying no valid data
- dirty worktree with many simultaneous code and config changes

## Code/worktree audit

At minimum, inspect:

- tracked modified files
- untracked files
- whether core training/data/config files changed
- whether the current run can still be tied to a coherent experiment contract

## Handoff behavior

If a project has a handoff file, keep only:

- latest run id
- cfg path
- status
- top success/failure signals
- top code risks
- next steps

## Push behavior

Prefer:

1. stage analysis artifacts
2. stage guarded code/config paths if the workflow is configured to do so
3. commit
4. push

