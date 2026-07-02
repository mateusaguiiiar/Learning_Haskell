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
* **Algebraic Data Types (`data`):** Designing custom sum and product types from scratch.
* **Self-Referential / Recursive Types:** Building low-level data structures manually.
* **Pure Recursion:** Designing recursive algorithms over both native types and custom types.

---

## 💡 Code Examples Included

Here are some of the custom data structures and functions implemented in the latest activities:

### 1. Pattern Matching without Guards
A custom data type to handle different customer profiles and extract names cleanly using pattern matching:
```haskell
data Cliente = PessoaFisica String Int | PessoaJuridica String Int

obterNome :: Cliente -> String
obterNome (PessoaFisica nome i) = nome
obterNome (PessoaJuridica ra a) = ra
```

### 2. Custom Recursive Lists (`ListaInt`)
A deep dive into how Haskell handles lists under the hood, featuring a recursive function to sum elements:
```haskell
data ListaInt = Vazia | No Int ListaInt deriving Show

somaLista :: ListaInt -> Int
somaLista Vazia        = 0
somaLista (No x resto) = x + somaLista resto
```

---

## 💻 How to Run and Test

### Prerequisites
Ensure you have the Glasgow Haskell Compiler (**GHC**) installed on your local machine:
```bash
ghc --version
```

### Running Locally with VS Code & GHCi
The quickest way to interact with any assignment file is using the **GHCi** (interactive terminal):

1. Open your terminal inside the specific activity folder (e.g., `Atv4/`).
2. Load the target script file (replace `main.hs` with your actual file name):
   ```bash
   ghci main.hs
   ```
3. Test any function directly in the prompt by providing mock arguments:
   ```haskell
   ghci> obterNome (PessoaFisica "Mateus" 20)
   "Mateus"
   
   ghci> somaLista (No 5 (No 15 Vazia))
   20
   ```
4. If you modify the code in VS Code, simply hit save and reload the interpreter without closing it:
   ```haskell
   ghci> :r
   ```
5. To close the interactive session, type `:q`.

---

## 📝 License
This repository is dedicated entirely to academic growth and functional programming exploration. Feel free to browse through the solutions!
