#!/bin/bash

# Prompt the user for the feature name


read -p "Enter the fix name: " FEATURE_NAME
# Create a new feature branch
git checkout develop
# Create a new feature branch
git checkout -b fix/$FEATURE_NAME
