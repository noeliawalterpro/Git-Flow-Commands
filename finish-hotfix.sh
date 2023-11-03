#!/bin/bash

# Prompt the user for the hotfix name
read -p "Enter the hotfix name to finish: " HOTFIX_NAME

# Ensure you are on the master branch
git checkout master

# Merge the hotfix branch into master
git merge --no-ff hotfix/$HOTFIX_NAME

# Create a new version tag
git tag -a v$HOTFIX_NAME -m "Hotfix $HOTFIX_NAME"

# Ensure you are on the develop branch
git checkout develop

# Merge the hotfix branch into develop
git merge --no-ff hotfix/$HOTFIX_NAME

# Delete the hotfix branch

read -p 'Are you sure you want to delete the branch =? (y/n):' confirmation

if [ "$confirmation" == "y" ] || [ "$confirmation" == "Y" ]; then
  
  git branch -d hotfix/$HOTFIX_NAME

else

  echo "Branch deletion canceled."

fi

