CC = gcc
CFLAGS = -Wall -Wextra -std=c99
TARGET_DIR = bin
TARGET = $(TARGET_DIR)/out
SRC_DIR = src
OBJ_DIR = obj
SRC = $(wildcard $(SRC_DIR)/*.c)
OBJ = $(patsubst $(SRC_DIR)/%.c, $(OBJ_DIR)/%.o, $(SRC))

.PHONY: run clean default

run: default
	./$(TARGET)

default: $(TARGET)

clean:
	rm -f $(OBJ_DIR)/*.o
	rm -f $(TARGET)

$(TARGET): $(OBJ)
	$(CC) -o $@ $^

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) $(CFLAGS) -c $< -o $@ -Iinclude
