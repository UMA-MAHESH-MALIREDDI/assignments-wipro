#!/bin/bash

LOGFILE="sample.log"

echo "ERROR lines:"
grep "ERROR" "$LOGFILE"

echo ""
echo "Formatted output (date time message):"

grep "ERROR" "$LOGFILE" | awk '{
  print $1, $2, $3, substr($0, index($0,$4))
}'
