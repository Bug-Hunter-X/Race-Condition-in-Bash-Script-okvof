# Race Condition in Bash Script

This repository demonstrates a race condition bug in a bash script.  Two threads concurrently attempt to increment a shared counter, leading to an unpredictable final count often less than the expected value of 2. The `bug.sh` file contains the buggy code, and `bugSolution.sh` offers a solution using a mutex (lock) to prevent race conditions.

The bug showcases a common concurrency issue, illustrating the importance of proper synchronization mechanisms in multithreaded programming.