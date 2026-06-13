# Collaboration

## When To Enable

Enable this module when a content project is handled by multiple people, multiple Agents, or a rotating mix of both. It is useful when responsibility, handoff timing, or change history would otherwise become unclear.

## Files Added

- `change_log.md`: A dated record of meaningful project changes, decisions, and handoffs.
- `roles.md`: A current map of contributors, responsibilities, review expectations, and decision ownership.

## How It Changes Context Routing

Context routing should check `roles.md` before assigning work and should read recent entries in `change_log.md` before changing project direction. Agents should preserve role boundaries, note ownership assumptions, and append important changes so the next contributor can reconstruct the project state.

## How To Disable

Stop updating the collaboration records once the project returns to a single owner. Keep the final `change_log.md` and `roles.md` as historical notes, or archive them with the project if they are no longer needed for routing.
