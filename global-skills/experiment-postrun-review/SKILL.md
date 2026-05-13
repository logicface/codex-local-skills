---
name: experiment-postrun-review
description: Use when the user wants a post-experiment workflow that automatically reviews results, diagnoses likely success or failure causes, audits the current code/worktree state for major risks, updates a handoff record if present, and stages or pushes the experiment artifacts. Triggers on requests like set up postrun analysis, auto-review every run, analyze completed experiments and push git, or wire a train script to do result closure automatically.
---

# Experiment Postrun Review

Use this skill to turn experiment completion into a disciplined closure workflow instead of a loose log dump.

## Goal

After each experiment run:

1. resolve the completed run directory
2. read the result artifacts
3. classify outcome signals
4. audit the config and current code/worktree for major risks
5. update a compact handoff file if the project uses one
6. stage, commit, and optionally push the right artifacts

## Core rules

- Prefer extending an existing postrun watcher or launch wrapper over creating a second parallel workflow.
- Never invent results or causal explanations that are not supported by recorded metrics or config checks.
- Distinguish success signals, failure signals, and unresolved risks.
- Treat dirty worktree state as a first-class experimental risk.
- Do not auto-stage unrelated files blindly; use explicit path rules or guarded heuristics.

## Minimum artifacts to inspect

- config used for the run
- run summary or equivalent metrics summary
- metrics history
- any split or contract audit artifact
- host log if completion state is ambiguous
- current git worktree state

## Minimum output

- compact analysis markdown
- likely causes of success, failure, or mixed outcome
- contract/code-risk audit
- next-step recommendation
- optional handoff update for cross-thread continuity

## Git rules

- Stage analysis artifacts explicitly.
- Only stage worktree code/config changes through a controlled allowlist or project rule.
- If the worktree is broad or contaminated, record that risk in the analysis.
- Push only after a commit is successfully created.

## References

- Read `references/checklist.md` for the postrun checklist and risk heuristics.

