CXX = g++
CXXFLAGS = -Wall -Wextra -std=c++11

BIN_DIR = bin
BANK_SRC = "Bank-System/Project Solution.cpp"
ATM_SRC = "ATM-System/Project2.cpp"

BANK_BIN = $(BIN_DIR)/bank_system
ATM_BIN = $(BIN_DIR)/atm_system

.PHONY: all bank atm clean

all: $(BIN_DIR) bank atm

$(BIN_DIR):
	mkdir -p $(BIN_DIR)

bank: $(BIN_DIR)
	$(CXX) $(CXXFLAGS) $(BANK_SRC) -o $(BANK_BIN)

atm: $(BIN_DIR)
	$(CXX) $(CXXFLAGS) $(ATM_SRC) -o $(ATM_BIN)

clean:
	rm -rf $(BIN_DIR)
