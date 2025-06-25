#!/bin/zsh

echo "Using DOTFILES at: $DOTFILES"
# Check if the dotfiles directory exist
if [[ ! -d "$DOTFILES" ]]; then
  echo "Error: Dotfiles directory not found at $DOTFILES"
  exit 1
fi
echo "--- Checking for dotfile changes in $DOTFILES ---"
# Get the the porcelain statue
STATUS=$(git -C $DOTFILES status --porcelain)
if [[ -z "$STATUS" ]]; then
  echo "No changes detected in your dotfiles."
  echo ""
  echo "-------------------------------------"
  exit 0
fi

# Initialize arrays for different change types
typeset -a modified_files
typeset -a added_files
typeset -a deleted_files
typeset -a unmerged_files
typeset -a untracked_files
typeset -a added_modihied_files
typeset -a unmerged_modified_files
typeset -a untracked_modified_files
typeset -a added_untracked_files
typeset -a other_files
# Parse the status output
# Using 'read -r' for robustness
while IFS= read -r line; do
  status_code="${line[1,2]}"
  filename="${line[4,-1]}"

  case "$status_code" in
    # Modified
    M*|*M) modified_files+="$filename" ;;
    # Added
    A*|*A) added_files+="$filename" ;;
    # Deleted
    D*|*D) deleted_files+="$filename" ;;
    # Unmerged
    U*|*U) unmerged_files+="$filename" ;;
    # Untracked
    \?\?) untracked_files+="$filename" ;;
    # Unmerged and modified
    # Untracked and modified
    # Added and modified
    
    # Other
    *) other_files+="$filename" ;;
  esac
done<<< "$STATUS"

echo "Modified files: $modified_files"
echo "Added files: $added_files"
echo "Deleted files: $deleted_files"
echo "Unmerged files: $unmerged_files"
echo "Untracked files: $untracked_files"
