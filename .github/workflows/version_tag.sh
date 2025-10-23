#!/bin/bash

current_version=${1:-"v1.1.0"}
version_type=${2:-"major"}

# Extract version numbers
version_number=${current_version#v}
echo $version_number
IFS='.' read -r major minor patch <<< "$version_number"

# Bump version based on type
case $version_type in
    "major")
        major=$((major + 1))
        minor=0
        patch=0
        ;;
    "minor")
        minor=$((minor + 1))
        patch=0
        ;;
    "patch")
        patch=$((patch + 1))
        ;;
esac

new_version="v${major}.${minor}.${patch}"
echo "$new_version"

