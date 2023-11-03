#!/bin/bash

# Prompt the user for the hotfix name
read -p "Enter the hotfix name: " HOTFIX_NAME

# Create a new hotfix branch
git checkout -b hotfix/$HOTFIX_NAME
