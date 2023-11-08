#!/bin/bash

# Prompt the user for the feature branch name
read -p "Enter the fix branch name to finish: " FEATURE_BRANCH_NAME

# Ensure you are on the develop branch
git checkout develop

# Merge the feature branch into develop
git merge --no-ff fix/$FEATURE_BRANCH_NAME

# Delete the feature branch

read -p 'Are you sure you want to delete the branch =? (y/n):' confirmation

if [ "$confirmation" == "y" ] || [ "$confirmation" == "Y" ]; then
  
  git branch -d fix/$FEATURE_BRANCH_NAME

else
  echo "Branch deletion canceled."
fi
