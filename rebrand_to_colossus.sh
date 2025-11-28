#!/usr/bin/env bash
set -euo pipefail

OLD="colossus"
NEW="colossus"

# Safety: make sure we're in a git repo so you don't nuke random folders
if ! git rev-parse --show-toplevel >/dev/null 2>&1; then
  echo "This doesn't look like a git repo. Run this from inside the Alacritty clone."
  exit 1
fi

REPO_ROOT="$(git rev-parse --show-toplevel)"
cd "$REPO_ROOT"

echo "Rebranding '$OLD' → '$NEW' under: $REPO_ROOT"
sleep 1

############################################
# 1) Replace text inside files
############################################
echo "→ Replacing text inside files…"

# Find text files containing the string, skipping .git and target/ build dirs
# -I = skip binary files
# -l = list filenames only
mapfile -t FILES < <(
  grep -Ilr "$OLD" . \
    --exclude-dir=.git \
    --exclude-dir=target \
    --exclude-dir=build \
    --exclude-dir=.idea \
    --exclude-dir=.vscode \
    2>/dev/null
)

for f in "${FILES[@]}"; do
  # Use sed in-place to swap colossus → colossus
  sed -i "s/${OLD}/${NEW}/g" "$f"
done

echo "   Done replacing contents in ${#FILES[@]} file(s)."

############################################
# 2) Rename files and directories
############################################
echo "→ Renaming files and directories…"

# Walk depth-first so we rename deepest paths first
# Skip .git dir entirely
find . -depth ! -path "./.git/*" -name "*${OLD}*" | while read -r path; do
  dir="$(dirname "$path")"
  base="$(basename "$path")"
  newbase="${base//$OLD/$NEW}"

  if [[ "$base" != "$newbase" ]]; then
    src="$path"
    dst="$dir/$newbase"

    # Prefer git mv so git history stays somewhat trackable
    if git mv "$src" "$dst" 2>/dev/null; then
      echo "   git mv '$src' → '$dst'"
    else
      mv "$src" "$dst"
      echo "   mv '$src' → '$dst'"
    fi
  fi
done

echo "✅ Rebrand complete. Search for leftover '$OLD' just in case:"
echo "   grep -R \"$OLD\" -n . --exclude-dir=.git"

