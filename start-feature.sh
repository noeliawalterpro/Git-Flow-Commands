#!/bin/bash

# Prompt the user for the feature name


read -p "Enter the feature name: " FEATURE_NAME
# Create a new feature branch
git checkout develop
# Create a new feature branch
git checkout -b feature/$FEATURE_NAME
