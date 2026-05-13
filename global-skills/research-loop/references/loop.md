# Research Loop Protocol

## Stage 1: Retrieval

- Define the question, scope, and constraints.
- Retrieve only enough evidence to define tractable directions.
- Prefer primary sources and discipline-appropriate evidence standards.
- Record the exact search date when the request depends on recent literature.

## Stage 2: Topic selection

Score each candidate by:

- expected value
- fit to the current project or environment
- implementation cost
- evaluation clarity
- confounding risk

Prefer directions that can be falsified quickly.

## Stage 3: Project mapping

Before editing, map the idea onto:

- likely files or modules
- expected configuration changes
- data dependencies
- evaluation path

State the minimum patch surface and minimum validation path.

## Stage 4: Implementation

- Prefer config or orchestration changes before heavy code refactors.
- Keep the change local and testable.
- Avoid changing multiple dimensions at once when attribution matters.

## Stage 5: Validation

Use staged validation:

1. static inspection
2. dry-run or smoke path
3. full run only after the early checks are credible

## Stage 6: Analysis

Separate:

- measured outcomes
- failure signatures
- interpretation
- next action

If the experiment fails, classify whether the main issue is:

- literature mismatch
- implementation defect
- data problem
- optimization instability
- weak hypothesis

