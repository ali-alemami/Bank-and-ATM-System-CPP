# Bank and ATM System (C++)

This repository contains two projects from the Object-Oriented Programming track at Programming Advices. While the course covers OOP concepts, this specific implementation is written in procedural C++ using structs and global functions, rather than classes.

## Courses
* [OOP Concepts](https://programmingadvices.com/p/oop-as-it-should-be-concepts)
* [OOP Applications](https://programmingadvices.com/p/11-oop-as-it-should-be-applications)

## Architecture and Technologies
* **C++**: Implemented using procedural programming.
* **Data Structures**: Uses `struct` (`stUser`, `stClient`) to model data entities.
* **Standard Template Library (STL)**: Utilizes `std::vector` for loading and managing records in memory, and `std::string` for text manipulation.
* **File I/O**: Uses `<fstream>` to persist data to text files (`Clients.txt` and `Users.txt`).
* Data fields are serialized and deserialized into text files using a string delimiter (`#//#`).

The applications do not use classes. Instead, data structures are passed to global functions that handle screen rendering, file reading/writing, and business logic.

## Compilation and Execution

A `Makefile` is provided at the repository root to compile both applications:

```bash
# Build both Bank and ATM applications into bin/
make

# Run the Bank System
./bin/bank_system

# Run the ATM System
./bin/atm_system

# Build individually
make bank
make atm

# Clean build artifacts
make clean
```

## Included Projects

### Bank System
Located in `Bank-System/`, this application manages bank clients and internal system users.
* Uses custom string parsing to save and load vector data into text files.
* Implements a bitmask permissions system (using flags such as 1, 2, 4, 8) to evaluate user access rights.
* Provides Create, Read, Update, and Delete operations for client and user records.
* Includes transaction functions for deposits, withdrawals, and balance updates.

### ATM Machine Simulator
Located in `ATM-System/`, this application interfaces with the `Clients.txt` data structure.
* Authenticates users by verifying the Account Number and PIN against records loaded in memory.
* Provides functions for quick withdrawal, normal withdrawal, deposits, and checking account balances.
