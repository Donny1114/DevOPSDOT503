# Makefile

# Variables
APP = calculator.py
TESTS = test_calculator.py
PYTHON = python3
BIN = app
BUILD_DIR = build

# Targets and rules
all: run test package

run:
	@echo "Running the application..."
	$(PYTHON) $(APP)

# clean:
# 	@echo "Cleaning up..."
# 	rm -rf *.pyc __pycache__/

test:
	@echo "Running unit tests..."
	$(PYTHON) -m unittest $(TESTS)

package:
	@echo "Creating deployable package..."
	mkdir -p $(BUILD_DIR)
	cp $(APP) $(BUILD_DIR)/
	tar -czf $(BIN).tar.gz -C $(BUILD_DIR) $(APP)

.PHONY: all run clean test package
