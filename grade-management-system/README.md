# Student Grade Management System

A C-based record management application designed to handle student grade tracking, statistical computations, and CRUD operations.

## Overview
This application provides a terminal interface for managing class rosters and individual student performance. It computes academic metrics such as grade point averages and letter grade distributions.

## Key Features & Systems Concepts
* **Structured Data Models:** Uses C `struct` types to group student attributes, course identifiers, and grade arrays.
* **Dynamic Memory Management:** Uses dynamic allocation (`malloc`/`free`) to manage dynamic lists of student records safely.
* **Statistical Computation:** Computes class averages, min/max grade thresholds, and letter grade breakdowns.
* **Input Validation & Formatting:** Ensures input bounds checking and presents structured CLI output formats.

## How to Build & Run
From the root directory, build using the unified build script:

```bash
./build.sh grade-book
./grade-management-system/bin/grade-book