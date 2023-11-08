#!/bin/bash


##
#Cleans the working tree by recursively removing files that are not under version control, starting from the current directory.

#-d: Remove untracked directories in addition to untracked files

#-f: Force

git clean -df
#clears all unstaged changes
git checkout -- .