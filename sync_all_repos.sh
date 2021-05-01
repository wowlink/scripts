#!/bin/bash

syncRepo() {
    if [ -d "$1" ]; then
        echo "Repository $1 exists"
        git -C "$1" pull
    else
        echo "Repository $1 not found. Skip"
    fi
}

SCRIPT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
PROJECT_ROOT="$(dirname "$SCRIPT_ROOT")"

echo "Search $PROJECT_ROOT for repositories."

syncRepo "$PROJECT_ROOT/wow-page"
syncRepo "$PROJECT_ROOT/wow-interface"
syncRepo "$PROJECT_ROOT/wow-lookup-fetcher"
syncRepo "$PROJECT_ROOT/wow-url-converter"
