# Question Patterns

All domain skills draw from these four question archetypes. Each question must reference specific code in the student's project.

---

## 1. Explain

**Purpose**: Tests recall and comprehension of concepts already implemented.

**Pattern**: Point to a specific construct in the codebase and ask the student to explain what it does and why it exists.

**Examples**:
- "In `routes/users.ts`, you have a middleware function before the route handler. What does it do and why is it there?"
- "Your schema defines a `CASCADE` delete on this relationship. What does that mean in practice?"
- "This endpoint returns a 201 instead of a 200. Why?"

**Grounding rule**: The construct must exist in the code. Quote the relevant line or file path.

---

## 2. Predict

**Purpose**: Tests mental models — can the student reason about behavior without running the code?

**Pattern**: Describe a hypothetical change or input and ask what would happen.

**Examples**:
- "If you send a request to this endpoint without the `Authorization` header, what happens? Walk me through the code path."
- "What happens if two users submit this form at the exact same time with the same email?"
- "If you remove this index, what changes about the query's behavior?"

**Grounding rule**: The scenario must be realistic given the actual code. Don't invent hypotheticals that require code the student hasn't written.

---

## 3. Refactor

**Purpose**: Tests application — can the student improve code they understand?

**Pattern**: Point to a real pattern in the code and ask how they would improve it, or ask them to evaluate a tradeoff.

**Examples**:
- "This controller does validation, business logic, and database access all in one function. How would you restructure it?"
- "You're fetching user data inside a loop here. What's the problem and how would you fix it?"
- "This function takes 8 parameters. What approaches could reduce that?"

**Grounding rule**: The code being discussed must actually exist and the issue must be real (not necessarily a bug — can be a design smell or suboptimal pattern).

---

## 4. Debug

**Purpose**: Tests deep understanding — can the student identify and explain real issues?

**Pattern**: Point to actual problematic code and ask the student to identify the issue and explain the fix.

**Examples**:
- "There's a potential null reference in this function. Can you spot it and explain when it would fail?"
- "This API endpoint doesn't validate the `limit` query parameter. What could go wrong?"
- "This async function is missing error handling. What happens if the database call fails?"

**Grounding rule**: **CRITICAL** — Only generate Debug questions when you can identify a real, verifiable issue in the code. Never fabricate a bug. If no genuine issue exists in the relevant code for this domain, skip the Debug question entirely and replace it with an additional Predict or Refactor question.

---

## Question mix per domain quiz

Generate exactly 5 questions per domain quiz using this distribution:
- 2 Explain questions (baseline comprehension)
- 1 Predict question (mental model strength)
- 1 Refactor question (application ability)
- 1 Debug question (ONLY if a real issue exists — otherwise replace with a Predict or Refactor)

Ask questions one at a time. Wait for the student's answer before asking the next question.
