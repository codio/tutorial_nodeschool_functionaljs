#!/bin/bash 
 
# Check parameters 
if [[ "$#" -ne 3 ]]; then 
    echo "3 parameters required" 
    exit 0 
fi 
 
# Translate lesson name into correct name for Workshopper projects 
if [ $2 == "hello_world" ]; then 
    STR="Hello World" 
elif [ $2 == "higher_order_functions" ]; then 
    STR="Higher Order Functions" 
elif [ $2 == "basic_map" ]; then 
    STR="Basic Map" 
elif [ $2 == "basic_filter" ]; then 
    STR="Basic Filter" 
elif [ $2 == "basic_every_some" ]; then 
    STR="Basic Every Some" 
elif [ $2 == "basic_reduce" ]; then 
    STR="Basic Reduce" 
elif [ $2 == "basic_recursion" ]; then 
    STR="Basic Recursion" 
elif [ $2 == "basic_call" ]; then 
    STR="Basic Call" 
elif [ $2 == "partial_application_without_bind" ]; then 
    STR="Partial Application Without Bind" 
elif [ $2 == "partial_application_with_bind" ]; then 
    STR="Partial Application With Bind" 
elif [ $2 == "implement_map_with_reduce" ]; then 
    STR="Implement Map With Reduce" 
elif [ $2 == "function_spies" ]; then 
    STR="Function Spies" 
elif [ $2 == "blocking_event_loop" ]; then 
    STR="Blocking Event Loop" 
elif [ $2 == "trampoline" ]; then 
    STR="Trampoline" 
elif [ $2 == "async_loops" ]; then 
    STR="Async Loops" 
elif [ $2 == "recursion" ]; then 
    STR="Recursion" 
elif [ $2 == "currying" ]; then 
    STR="Currying" 
elif [ $2 == "function_call" ]; then 
    STR="Function Call" 
else 
    echo UNKNOWN: Make sure you have your code file selected before running/verifying 
    exit 0 
fi 
echo SELECTED FILE IS : $STR 
 
#Select the workshopper lesson 
functional-javascript-workshop select $STR > /dev/null 
 
# Run or Verify? 
if [ $1 == "run" ]; then 
    functional-javascript-workshop run $3/$2.js 
elif [ $1 == "verify" ]; then 
    functional-javascript-workshop verify $3/$2.js 
else  
    echo "BAD COMMAND" 
fi