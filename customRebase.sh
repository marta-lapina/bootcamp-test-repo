#!/bin/bash
# Get current branch name                 
CURRENT_HEAD="$(git rev-parse --abbrev-ref HEAD)" 
# Find merge-base hash 
MERGE_BASE="$(git merge-base "${CURRENT_HEAD}" origin/master)" 
# Do rebase                                                
git rebase -i "${MERGE_BASE}"