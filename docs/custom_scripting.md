# Custom Scripting

## Sample Implementation of a Walnut Script

Here's an example of what the `search` script might look like:

```
#!/bin/bash

# (walnut) search - Search through notes and references for a given term

SEARCH_TERM="$1"

if [ -z "$SEARCH_TERM" ]; then
    echo "Usage: walnut search \"search term\""
    exit 1
fi

if [ -z "$WALNUT" ]; then
  echo "Error: WALNUT is not set. Please set it before running this script."
  exit 1
fi

echo "Searching for \"$SEARCH_TERM\" in Walnut..."

grep -ri "$SEARCH_TERM" "$WALNUT" --color=auto

```
