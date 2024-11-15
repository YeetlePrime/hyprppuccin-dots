#! /bin/bash

# Assure that the input parameters are valid
if [ $# -ne 1 ]; then
	echo "Expected exactly one argument: path to init, but $# were supplied."
	exit
fi

DIRECTORY=$1

# Assure that the directory does not exist yet
if [ -d "${DIRECTORY}" ]; then
	echo "Error: Directory \"${DIRECTORY}\" already exists. Doing nothing."
	exit
fi

# Create directories
mkdir -p "${DIRECTORY}/src"

#Create main file with hello world content
MAINFILE="${DIRECTORY}/src/main.c"
touch "$MAINFILE"
cat <<EOM >"$MAINFILE"
#include <stdio.h>

int main(int argc, char** argv) {
	printf("Hello World\n");
	
	return 0;
}
EOM

# Create basic makefile
MAKEFILE="${DIRECTORY}/Makefile"
TITLE=$(basename "${DIRECTORY}" | awk '{gsub(/ /, "_");print tolower($0)}')
touch "$MAKEFILE"
cat <<EOM >"$MAKEFILE"
# ----- Modifyable Config -----

TITLE = ${TITLE} 

SRC_DIR := src
BUILD_DIR := build

CC := gcc
CFLAGS := -Wall -pedantic -Wextra

# ----- Unmodifyable Config -----

SRCS := \$(shell find \$(SRC_DIR) -name *.c)
OBJS := \$(SRCS:\$(SRC_DIR)/%.c=\$(BUILD_DIR)/%.o)
HDR_DIRS := \$(dir \$(shell find \$(SRC_DIR) -name "*.h"))
INC := \$(shell echo \$(HDR_DIRS) | awk '{gsub(/(^\s+)|(\s+\$\$)/, "")};/./ && !seen[\$\$0]++{print "-I" \$\$0};' RS=' ')

all: title

clean:
	@printf "Cleaning \$(BUILD_DIR)\n"
	@rm -rf \$(BUILD_DIR)/*

\$(BUILD_DIR)/%.o: \$(SRC_DIR)/%.c
	@printf "Compiling \$<\n"
	@mkdir -p \$(@D)
	@\$(CC) \$(CFLAGS) \$(INC) -c \$< -o \$@

build: \$(OBJS)
	@printf "Building executable \$(TITLE)\n"
	@\$(CC) \$(CFLAGS) -o \$(TITLE) \$^

build_print:
	@printf " ----- BUILDING \$(TITLE) -----\n"

title: build_print build
	@printf " ----- FINISHED BUILDING \$(TITLE) -----\n"

run: title
	@printf " ----- RUNNING \$(TITLE) -----\n"
	@./\$(TITLE)


.PHONY: all clean title run build_print build print
EOM
