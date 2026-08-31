# Bank & ATM System (C++)

This repository contains the capstone projects for the Object-Oriented Programming (OOP) track at **Programming Advices**. It features a robust, fully-functional Bank System and an accompanying ATM System simulator.

## 📚 Courses
* [OOP Concepts](https://programmingadvices.com/p/oop-as-it-should-be-concepts)
* [OOP Applications](https://programmingadvices.com/p/11-oop-as-it-should-be-applications)

## 🛠 Technologies
* **C++**
* Object-Oriented Programming (Encapsulation, Inheritance, Polymorphism, Abstraction)
* File-Based Database (`.txt`)

## 🏗 System Architecture
```mermaid
classDiagram
    class BankSystem {
        +Login()
        +ShowMainMenu()
        +ManageUsers()
        +ManageClients()
        +Transactions()
    }
    class ATMSystem {
        +QuickWithdraw()
        +NormalWithdraw()
        +Deposit()
        +CheckBalance()
    }
    class Client {
        -AccountNumber: string
        -PinCode: string
        -Name: string
        -AccountBalance: double
        +Deposit(amount)
        +Withdraw(amount)
        +Transfer(amount, destination)
    }
    class User {
        -Username: string
        -Password: string
        -Permissions: int (Bitmask)
        +CheckAccess(permissionFlag)
    }
    
    BankSystem "1" *-- "many" Client : Manages
    BankSystem "1" *-- "many" User : Manages
    ATMSystem "1" *-- "many" Client : Authenticates & Updates
    
    Client ..> "Clients.txt" : Custom Serialization (#//#)
    User ..> "Users.txt" : Custom Serialization (#//#)
```

## 🚀 Projects Included

### 1. Advanced Bank System (`Bank-System/`)
A 1,500+ line C++ application featuring:
* **Custom Serialization:** Custom string parsers (`SplitString`) and delimiters (`#//#`) to save/load vector data into a text-based database (`Clients.txt` & `Users.txt`).
* **Access Control:** Engineered a bitmask-based permissions system (flags: 1, 2, 4, 8, etc.) to store and evaluate user roles and access rights.
* **Full CRUD Operations:** Add, Update, Delete, and Find functionalities for both Bank Clients and System Users.
* **Transactions:** Deposit, Withdraw, and Transfer functionalities that automatically update system logs.

### 2. ATM Machine Simulator (`ATM-System/`)
A multi-tier ATM application interfacing directly with the Bank's `Clients.txt` data structure:
* **Authentication:** Secure ATM login verifying Account Number and PIN via in-memory vector iteration.
* **Core Functions:** Quick Withdraw, Normal Withdraw, Deposit, and real-time Balance Checking.
