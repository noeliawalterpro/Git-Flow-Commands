#!/bin/bash

# Prompt the user for the release version

read -p "Enter the release version (e.g., 1.0.0): " RELEASE_VERSION

# Create a new release branch
git checkout develop
# Create a new release branch
git checkout -b release/$RELEASE_VERSION
