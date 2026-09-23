# POSIX Custom Shell

A lightweight interactive Unix-style command-line interpreter written in C. This project models core process lifecycle management and POSIX system execution patterns.

## Overview
The shell presents an interactive command loop that reads user input, parses commands, and manages external program execution in child processes using standard Unix system calls.

## Key Features & Systems Concepts
* **Process Lifecycle Control:** Implements concurrent process creation using `fork()` and process synchronization using `wait()`.
* **Program Execution:** Executes commands via `execvp()`, allowing standard system utilities to run natively.
* **Command Parsing:** Handles line buffering and string tokenization using `strtok()` to split arguments.
* **Built-In Commands:** Features direct shell commands such as `cd` (directory traversal using `chdir()`) and `exit`.

## How to Build & Run
From the root directory, build using the unified build script:

```bash
./build.sh my-shell
./posix-custom-shell/bin/my-shell
```