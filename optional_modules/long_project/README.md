# Long Project

## When To Enable

Enable this module for long-running content projects that span multiple work sessions, research passes, drafts, reviews, or production cycles. It is useful when a simple status file no longer carries enough continuity.

## Files Added

- `milestone_digest.md`: A compact summary of completed milestones, major outputs, and current project direction.
- `review_cycle.md`: A record of review cadence, review criteria, open review items, and next review timing.

## How It Changes Context Routing

Context routing should read `milestone_digest.md` before loading detailed project files, then use `review_cycle.md` to decide whether the next step is creation, revision, validation, or publication preparation. Agents should update milestone summaries after meaningful phase changes so future sessions do not need to reload the full project history.

## How To Disable

Disable this module when the project becomes short-lived again, reaches publication, or no longer needs milestone-level continuity. Keep the final digest as a project summary and remove the review cycle from active routing.
