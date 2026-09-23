# Crack the Code: Decryption Mini-Game

An interactive command-line logic game where players attempt to decrypt a randomly generated multi-digit secret code within a limited number of attempts.

## Overview
The program generates a randomized target code and provides real-time position and value feedback on every guess, requiring players to deduce the correct sequence.

## Key Features & Systems Concepts
* **Randomization & Seeding:** Utilizes `srand()` and `rand()` to generate unique code combinations per session.
* **Control Flow & Game Loops:** Implements robust conditional state machines to track turn counts, win conditions, and attempt limits.
* **Input Sanitization:** Validates terminal input to handle out-of-bounds numbers and incorrect sequence lengths.
* **Positional Feedback Engine:** Evaluates user input against the secret key array to output accurate match indicators.

## How to Build & Run
From the root directory, build using the unified build script:

```bash
./build.sh code-breaker
./code-breaker-game/bin/code-breaker