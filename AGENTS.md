# BrainMaxxing — Agent Guide

A set of agent skills that quiz students on software engineering concepts grounded in their actual codebase. Designed for early-career developers who co-create projects with AI and need to verify their conceptual understanding.

---

## What this is

BrainMaxxing provides skills for concept mastery assessment:

- `/brainmax` — orchestrator that analyzes a codebase, detects which knowledge domains are implemented, and presents them for quizzing
- `/api-design` — quizzes on API and interface design concepts
- `/database-design` — quizzes on data modeling and database concepts
- `/system-architecture` — quizzes on architectural decisions and patterns
- `/implementation-patterns` — quizzes on code-level design patterns
- `/testing-strategy` — quizzes on testing approaches and coverage
- `/security-fundamentals` — quizzes on application security concepts
- `/devops-and-ci-cd` — quizzes on deployment and pipeline concepts
- `/error-handling-and-resilience` — quizzes on fault tolerance patterns
- `/requirements-and-scope` — quizzes on requirements engineering concepts
- `/domain-modeling` — quizzes on domain-driven design concepts
- `/ui-and-frontend` — quizzes on frontend architecture concepts
- `/observability` — quizzes on monitoring and observability concepts

All domain skills are read-only — they analyze code but never modify it.

---

## Repository structure

```
brainmaxxing/
├── skills/
│   ├── brainmax/
│   │   ├── SKILL.md
│   │   └── reference/
│   │       └── detection-heuristics.md
│   ├── api-design/
│   │   ├── SKILL.md
│   │   └── reference/
│   │       ├── concepts.md
│   │       ├── question-patterns.md
│   │       └── scoring-rubric.md
│   ├── database-design/
│   │   ├── SKILL.md
│   │   └── reference/
│   │       ├── concepts.md
│   │       ├── question-patterns.md
│   │       └── scoring-rubric.md
│   ├── system-architecture/
│   │   ├── SKILL.md
│   │   └── reference/
│   │       ├── concepts.md
│   │       ├── question-patterns.md
│   │       └── scoring-rubric.md
│   ├── implementation-patterns/
│   │   ├── SKILL.md
│   │   └── reference/
│   │       ├── concepts.md
│   │       ├── question-patterns.md
│   │       └── scoring-rubric.md
│   ├── testing-strategy/
│   │   ├── SKILL.md
│   │   └── reference/
│   │       ├── concepts.md
│   │       ├── question-patterns.md
│   │       └── scoring-rubric.md
│   ├── security-fundamentals/
│   │   ├── SKILL.md
│   │   └── reference/
│   │       ├── concepts.md
│   │       ├── question-patterns.md
│   │       └── scoring-rubric.md
│   ├── devops-and-ci-cd/
│   │   ├── SKILL.md
│   │   └── reference/
│   │       ├── concepts.md
│   │       ├── question-patterns.md
│   │       └── scoring-rubric.md
│   ├── error-handling-and-resilience/
│   │   ├── SKILL.md
│   │   └── reference/
│   │       ├── concepts.md
│   │       ├── question-patterns.md
│   │       └── scoring-rubric.md
│   ├── requirements-and-scope/
│   │   ├── SKILL.md
│   │   └── reference/
│   │       ├── concepts.md
│   │       ├── question-patterns.md
│   │       └── scoring-rubric.md
│   ├── domain-modeling/
│   │   ├── SKILL.md
│   │   └── reference/
│   │       ├── concepts.md
│   │       ├── question-patterns.md
│   │       └── scoring-rubric.md
│   ├── ui-and-frontend/
│   │   ├── SKILL.md
│   │   └── reference/
│   │       ├── concepts.md
│   │       ├── question-patterns.md
│   │       └── scoring-rubric.md
│   └── observability/
│       ├── SKILL.md
│       └── reference/
│           ├── concepts.md
│           ├── question-patterns.md
│           └── scoring-rubric.md
├── shared/
│   ├── scoring-rubric.md
│   ├── question-patterns.md
│   └── detection-heuristics.md
├── scripts/
│   └── sync-skill-references.sh
├── AGENTS.md
├── README.md
└── LICENSE
```

No build step. The `skills/` directory is the source of truth and the install target. Each installable skill must keep any runtime reference files inside its own directory.

---

## Adding a new domain skill

1. Create `skills/{domain-name}/SKILL.md` with frontmatter:

```markdown
---
name: domain-name
description: One-sentence description of what the skill quizzes.
---
```

2. Add a `reference/` subdirectory with a `concepts.md` file listing the core concepts for that domain.

3. The skill body must:
   - Read the codebase (never modify it)
   - Use question patterns from `reference/question-patterns.md`
   - Score using the rubric from `reference/scoring-rubric.md`
   - Only generate Debug questions when a real, verifiable issue exists in the code

4. Copy `shared/question-patterns.md` and `shared/scoring-rubric.md` into that skill's `reference/` directory so the installed skill stays self-contained.

5. Follow the quiz flow: present questions one at a time, wait for answers, score each, then produce a domain summary.

---

## Shared reference files

- `shared/scoring-rubric.md` — 0–3 scoring scale used by all domain skills
- `shared/question-patterns.md` — four question archetypes (Explain, Predict, Refactor, Debug)
- `shared/detection-heuristics.md` — file patterns and signals the orchestrator uses to detect domains

These files are the canonical authoring sources. Keep bundled copies under each skill's `reference/` directory in sync by running `./scripts/sync-skill-references.sh`, then verify with `./scripts/sync-skill-references.sh --check`.

---

## Canvas extension

The `extensions/brainmax-canvas/` directory contains a GitHub Copilot App canvas extension that provides the interactive dashboard. It renders detected domains as buttons, displays questions, relays freeform answers into chat, tracks quiz progress, displays scores, and compiles the final report. The canvas is optional — all skills work standalone in any agent client.

---

## Design constraints

- **Read-only**: Skills analyze code, never edit it
- **Grounded**: Every question must reference specific code in the student's project
- **Honest**: Never fabricate bugs, issues, or code that doesn't exist
- **One-at-a-time**: Questions are asked sequentially, not batched
- **Rubric-scored**: All answers scored on the shared 0–3 rubric
