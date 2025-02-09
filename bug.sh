#!/bin/bash

# This script demonstrates a race condition bug.

count=0

# Function to increment the counter
increment_counter() {
  local new_count=$((count + 1))
  count=$new_count
}

# Function to print the counter
print_counter() {
  echo "Counter: $count"
}

# Create two threads that increment the counter concurrently
thread1_pid=$(
  increment_counter & echo $!
)
thread2_pid=$(
  increment_counter & echo $!
)

# Wait for the threads to finish
wait $thread1_pid $thread2_pid

# Print the final counter value
print_counter