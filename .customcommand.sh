#!/bin/bash
function malgem() {
  for var in "$@"
  do
    echo "$var" >> ruby_malicious_gems.txt
  done  
}
