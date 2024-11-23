# Using Standard POSIX Tools with Walnut

In addition to the custom Walnut scripts, you can use standard POSIX commands to interact with your knowledge base:

### Searching for Text within Files

Recursively searches for "search term" in all files under `$WALNUT` (default to `~/Walnut`):

```bash
grep -r "search term" $WALNUT
```

### Finding Files by Name

Finds files whose names contain "keyword":

```bash
find $WALNUT -name "*keyword*"
```

### Counting Files in Notes

Counts the number of files in `$WALNUT/Notes`:

```bash
find $WALNUT/Notes -type f | wc -l
```

### Displaying Recent Notes

Lists the most recently modified files in `$WALNUT/Notes`:

```bash
ls -lt ~/KnowledgeBase/Notes | head
```

### Viewing Tags / Metadata in a Note

Displays the first 10 lines (including YAML front matter) to see tags and metadata:

```bash
head -n 10 $WALNUT/Notes/note-title.md
```

### Processing Metadata

Extracts all tags from the YAML front matter assuming it is structred as `tags: ["tag1", "tag2"]`:

```bash
grep -rh '^tags:' $WALNUT/Notes | cut -d':' -f2 | tr -d '[]",' | tr ' ' '\n' | sort | uniq
```
