# Learning Haskell 🚀

Welcome to my repository for tracking my journey, assignments, and progress in learning **Haskell** and Functional Programming paradigms. 

This repository contains structured solutions to academic exercises (Activity folders `Atv1`, `Atv2`, `Atv3`, `Atv4`, etc.), focusing on clean code, mathematical logic, and strong type safety.

---

## 📚 Repository Roadmap & Topics

As I progress through the course modules, this repository covers the following functional programming core concepts:

### ⚙️ Fundamentals & Basics
* **Basic Syntax & Functions:** Understanding how to write pure functions, use type variables, and leverage Haskell's powerful type inference.
* **Pattern Matching & Guards:** Implementing conditional logic using standard pattern matching and guards (`|`) for boundary and mathematical condition checks.
* **Tuples & Lists:** Manipulating native pairs, triples, and working with primitive lists (`[]` and `:` operator).

### 🛠️ Advanced Type System & Recursion
* **Type Aliases (`type`):** Creating clean synonyms for pre-existing types to make code more readable.
* **Algebraic Data Types (`data`):** Designing custom sum and product types from scratch, utilizing multiple constructors (e.g., separating `PessoaFisica` and `PessoaJuridica` logic under a single `Cliente` type).
* **Self-Referential / Recursive Types:** Building low-level data structures manually (e.g., creating a custom linked list structure `data ListaInt = Vazia | No Int ListaInt`).
* **Pure Recursion:** Designing recursive algorithms over both native types and custom types (e.g., recursive accumulation to sum custom list elements).

---

## 💻 How to Run and Test

### Prerequisites
Ensure you have the Glasgow Haskell Compiler (**GHC**) installed on your local machine:
```bash
ghc --version
