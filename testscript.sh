#!/bin/bash
echo "this is an example of the script"
echo "that is running in a build step"
echo "this is param $PASSED"
NUM=$(($FIRSTNUMBER + $SECONDNUMBER))
echo "$NUM"
