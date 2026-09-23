# C Systems Programming Portfolio

A showcase of low-level systems programming projects in C demonstrating core operating system concepts, including process lifecycle control via POSIX system calls, dynamic memory allocation, structured data models, and input sanitization.

## Portfolio Overview

This repository contains three self-contained C applications designed to highlight essential systems-level programming techniques:

1. **POSIX Custom Shell (`posix-custom-shell`)**
   An interactive Unix-style command-line interpreter that models concurrent process execution, parent-child process synchronization, and string tokenization.
2. **Student Grade Management System (`grade-management-system`)**
   A terminal-based record management application utilizing C `struct`s and dynamic memory allocation (`malloc`/`free`) to handle class rosters and statistical computations.
3. **Crack the Code Mini-Game (`code-breaker-game`)**
   An interactive logic mini-game built around pseudo-random number generation, array evaluation, conditional state tracking, and input sanitization.

---

## Technical Skills & Systems Concepts Covered

* **Process Control & Execution:** Concurrent process creation (`fork`), parent synchronization (`wait`), program execution (`execvp`), and directory navigation (`chdir`).
* **Memory Management:** Dynamic allocation and deallocation (`malloc`, `free`), memory safety, pointer manipulation, and array bounds checking.
* **POSIX & C Standard Library:** File/stream handling, string tokenization (`strtok`), input buffering, and pseudo-random generation (`rand`, `srand`).
* **Build Automation:** Unified shell scripting (`build.sh`) with targeted project compilation, error handling, and clean workflows.

---

## Repository Structure

```text
c-systems-programming-portfolio/
├── build.sh                        # Unified build script
├── code-breaker-game/              # Mini-game application
│   ├── src/                        # C source code
│   └── README.md
├── grade-management-system/        # Grade book management system
│   ├── src/
│   └── README.md
└── posix-custom-shell/             # Custom Unix shell
    ├── src/
    └── README.md
```