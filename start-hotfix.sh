#!/bin/bash

# Prompt the user for the hotfix name


read -p "Enter the hotfix version (e.g., 1.0.0): " HOTFIX_NAME

git checkout  master
# Create a new hotfix branch
git checkout -b hotfix/$HOTFIX_NAME
