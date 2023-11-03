#!/bin/bash

# Prompt the user for the release version
read -p "Enter the release version to finish (e.g., 1.0.0): " RELEASE_VERSION

# Ensure you are on the master branch
git checkout master

# Merge the release branch into master
if git merge --no-ff release/$RELEASE_VERSION; then
  # Merge was successful, so create a version tag
  git tag -a v$RELEASE_VERSION -m "Release $RELEASE_VERSION"

  # Ensure you are on the develop branch
  git checkout develop

  # Merge the release branch into develop
  git merge --no-ff release/$RELEASE_VERSION

  # Delete the release branch
  read -p 'Are you sure you want to delete the branch (y/n): ' confirmation

  if [ "$confirmation" == "y" ] || [ "$confirmation" == "Y" ]; then
    git branch -d release/$RELEASE_VERSION
  else
    echo "Branch deletion canceled."
  fi
else
  echo "Merge into master was unsuccessful. Aborting."
fi
