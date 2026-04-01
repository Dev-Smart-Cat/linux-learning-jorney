#!/bin/bash

# Script useful for find what is taking all disk space.

echo "Top 10 largest files/dirs in the current dir"

# du -ah .: calculates the disk usage (du) of all files and dirs (a)
# in the current dir (.) in a humam-readable format (h).
# sort -rh: sorts the output.
# 	-r: reverses the sort order (lagest first).
# 	-h: sorts based on humam-readable numbers (e.g., 2K, 1G)
# head -n 10: display only the top 10 lines of the sorted output.

du -ah . | sort -rh | head -n 10
