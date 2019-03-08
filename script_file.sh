#!/usr/bin/env bash

# regex to validate in commit msg
commit_regex='[Reviewer-[A-Za-z]+]'
error_msg="Aborting commit. Your commit message should have Reviewer Name . Format is [Reviewer-Name]"

if ! grep -iqE "$commit_regex" "$1"; then
    echo "$error_msg" >&2
    exit 1
fi
