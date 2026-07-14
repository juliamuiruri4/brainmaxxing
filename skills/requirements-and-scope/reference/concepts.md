# Requirements & Scope — Concept Inventory

Core concepts the Requirements & Scope quiz can draw from. Questions should only target concepts that are evidenced in the student's codebase.

---

## Requirements Types

- **Functional requirements**: What the system must do (features, behaviors, operations)
- **Non-functional requirements**: How the system must perform (speed, security, availability, usability)
- **Constraints**: Fixed boundaries (technology choices, budget, timeline, compliance)
- **Assumptions**: Things taken as given without verification (user has internet, runs on modern browser)

## Elicitation & Analysis

- **Stakeholder identification**: Who benefits, who pays, who uses, who maintains
- **User stories**: "As a [role], I want [goal], so that [benefit]" — capturing intent
- **Acceptance criteria**: Specific, testable conditions that define "done"
- **Edge cases**: What happens at boundaries (no data, maximum data, concurrent access)
- **Negative requirements**: What the system explicitly does NOT do

## Scope Management

- **MVP (Minimum Viable Product)**: Smallest set of features that delivers value
- **Scope creep**: Uncontrolled expansion of requirements — how to prevent
- **In scope vs. out of scope**: Explicit boundaries documented for clarity
- **Prioritization frameworks**: MoSCoW (Must/Should/Could/Won't), value vs. effort
- **Incremental delivery**: Building in phases, each phase usable on its own

## Traceability

- **Requirements to code**: Can you point from a requirement to the code that implements it?
- **Requirements to tests**: Does every requirement have a corresponding test?
- **Change impact**: If a requirement changes, what code/tests must change?
- **Coverage gaps**: Requirements that exist but have no implementation yet

## Quality Attributes

- **Performance**: Response time, throughput, resource usage targets
- **Scalability**: Ability to handle growth (users, data, requests)
- **Reliability**: How often it can fail (uptime targets, MTBF)
- **Security**: Who can access what, what data must be protected
- **Usability**: How easy to learn, how efficient to use, error recovery
- **Maintainability**: How easy to change, extend, debug

## Documentation

- **README as spec**: Using README to communicate project purpose and scope
- **Living documentation**: Docs that stay current as the project evolves
- **Decision records**: Documenting why decisions were made, not just what
- **User-facing vs. developer-facing**: Different audiences need different documentation
