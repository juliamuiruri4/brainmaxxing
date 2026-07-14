#!/bin/sh
set -eu

ROOT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
MODE=${1:-sync}

DOMAIN_SKILLS="
api-design
database-design
system-architecture
implementation-patterns
testing-strategy
security-fundamentals
devops-and-ci-cd
error-handling-and-resilience
requirements-and-scope
domain-modeling
ui-and-frontend
observability
"

copy_or_check() {
  source_file=$1
  target_file=$2

  if [ "$MODE" = "--check" ]; then
    if [ ! -f "$target_file" ]; then
      echo "Missing bundled file: $target_file" >&2
      return 1
    fi

    if ! cmp -s "$source_file" "$target_file"; then
      echo "Bundled file differs from canonical source: $target_file" >&2
      return 1
    fi

    return 0
  fi

  mkdir -p "$(dirname "$target_file")"
  cp "$source_file" "$target_file"
}

status=0

copy_or_check \
  "$ROOT_DIR/shared/detection-heuristics.md" \
  "$ROOT_DIR/skills/brainmax/reference/detection-heuristics.md" || status=1

for skill in $DOMAIN_SKILLS; do
  copy_or_check \
    "$ROOT_DIR/shared/question-patterns.md" \
    "$ROOT_DIR/skills/$skill/reference/question-patterns.md" || status=1
  copy_or_check \
    "$ROOT_DIR/shared/scoring-rubric.md" \
    "$ROOT_DIR/skills/$skill/reference/scoring-rubric.md" || status=1
done

if grep -R -n '\.\./\.\./shared/' "$ROOT_DIR/skills" --include='SKILL.md' >/dev/null 2>&1; then
  echo 'Found forbidden ../../shared/ reference in skills/*/SKILL.md' >&2
  grep -R -n '\.\./\.\./shared/' "$ROOT_DIR/skills" --include='SKILL.md' >&2
  status=1
fi

for skill_file in "$ROOT_DIR"/skills/*/SKILL.md; do
  skill_dir=$(dirname "$skill_file")
  for ref_path in $(sed -n 's/.*`\(reference\/[^`]*\.md\)`.*/\1/p' "$skill_file"); do
    if [ ! -f "$skill_dir/$ref_path" ]; then
      echo "Missing referenced local file: $skill_dir/$ref_path" >&2
      status=1
    fi
  done
done

if [ "$MODE" = "--check" ]; then
  if [ "$status" -eq 0 ]; then
    echo 'Bundled skill references are in sync with shared/.'
  fi
else
  echo 'Bundled skill references synchronized from shared/.'
fi

exit "$status"
