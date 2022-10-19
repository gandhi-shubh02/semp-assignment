#!/bin/bash
find . -type f -mtime -20 -printf "%k KB %p \n" | sort -nr | head -10  