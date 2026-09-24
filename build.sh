#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Define Compiler & Flags
CC="gcc"
CFLAGS="-Wall -Wextra -pedantic -std=c11 -g"

# Helper function to compile a single project
build_project() {
    local proj_name="$1"
    local proj_dir="$2"
    local src_files="$3"

    echo "=========================================="
    echo "Building: $proj_name"
    echo "=========================================="

    if [ ! -d "$proj_dir" ]; then
        echo "Error: Directory '$proj_dir' does not exist."
        return 1
    fi

    # Create binary directory inside the project folder
    mkdir -p "$proj_dir/bin"

    # Compile the source files into the binary directory
    $CC $CFLAGS $src_files -o "$proj_dir/bin/$proj_name"
    
    echo "Successfully built $proj_name -> $proj_dir/bin/$proj_name"
    echo ""
}

# Individual Build Functions
build_code_breaker() {
    build_project "code-breaker" "code-breaker-game" "code-breaker-game/src/peters_kayla_minigame.c"
}

build_grade_book() {
    build_project "grade-book" "grade-management-system" "grade-management-system/src/peters_kayla_grade_management.c"
}

build_my_shell() {
    build_project "my-shell" "posix-custom-shell" "posix-custom-shell/src/peters_kayla_my_shell.c"
}

# Clean Function
clean_all() {
    echo "Cleaning all build binaries..."
    rm -rf "code-breaker-game/bin" "grade-management-system/bin" "posix-custom-shell/bin"
    echo "Clean complete!"
}

# Help / Usage Function
show_help() {
    echo "Usage: ./build.sh [target]"
    echo ""
    echo "Available targets:"
    echo "  code-breaker    Build the Crack the Code mini-game"
    echo "  grade-book      Build the Grade Book management system"
    echo "  my-shell        Build the custom Unix shell"
    echo "  all             Build all three projects (default)"
    echo "  clean           Remove compiled binary directories"
    echo "  help            Show this help menu"
}

# Main Command Parsing Logic
case "$1" in
    code-breaker)
        build_code_breaker
        ;;
    grade-book)
        build_grade_book
        ;;
    my-shell)
        build_my_shell
        ;;
    all|"")
        build_code_breaker
        build_grade_book
        build_my_shell
        ;;
    clean)
        clean_all
        ;;
    help|--help|-h)
        show_help
        ;;
    *)
        echo "Error: Unknown target '$1'"
        echo ""
        show_help
        exit 1
        ;;
esac