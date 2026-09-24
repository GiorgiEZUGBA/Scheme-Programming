# Scheme Functional Toolkit & Algorithmic Library

A comprehensive collection of functional algorithms, list manipulation utilities, and mathematical operations implemented in standard Scheme (Lisp). This repository demonstrates core functional programming paradigms, including tail-call optimization, pure immutability, higher-order functions, and arbitrary-precision arithmetic. 

Included is a bespoke, zero-dependency unit testing framework designed to evaluate and score functional workflows dynamically.

## 🚀 Key Technologies & Concepts

* **Language:** Scheme (R5RS / Guile / Racket compatible)
* **Paradigms:** Pure Functional Programming, Recursion, Tail-Call Optimization (`let loop`), Higher-Order Functions (`map`, `apply`).
* **Concepts:** Big-integer arithmetic, dynamic list partitioning, combinatorics, sequence analysis, and custom automated testing.

## 📂 Core Modules

### 1. Arbitrary-Precision Arithmetic
* **`sum` / `sum_integers`:** Performs addition on arbitrarily large numbers represented as lists of single digits (e.g., `(sum '((1 2) (5 3)))` returns `'(6 5)`). It recursively handles carry-over arithmetic across multiple lists of varying lengths, bypassing standard system integer limits.

### 2. Algorithmic Mathematics
* **`binpow (a, b)`:** Implements binary exponentiation (fast power) to calculate $a^b$ in highly efficient `O(log b)` time complexity.
* **`fib (n)`:** Calculates the *nth* Fibonacci number. Strictly utilizes tail recursion via named `let loop` to prevent stack overflow and ensure $O(n)$ time complexity with $O(1)$ space.
* **`gcd (x, y)`:** Computes the Greatest Common Divisor using the recursive Euclidean algorithm.
* **`row (index)`:** Generates a specific row of Pascal's Triangle by computing adjacent sums recursively via `get_next_row`.

### 3. Advanced Sequence & List Processing
* **`max-decreasing-subsegment`:** Scans a sequence to find and extract the longest strictly decreasing contiguous subsegment. Resolves length ties programmatically.
* **`partition (n, lst)`:** Implements a QuickSort-style partitioning mechanism. Splits a single list into two distinct lists: one with elements strictly less than the pivot `n`, and another with the remaining elements.
* **`permutation? (lst1, lst2)`:** Verifies if two lists are exact permutations of one another by recursively matching and removing elements, returning a boolean flag.
* **`closest-node`:** A tree-traversal utility that recursively evaluates nested lists (trees) to find and compute target node values.
* **`num-occurrences`:** Uses higher-order functions (`map`, `apply`) to count the frequency of elements across a sequence.

### 4. Custom Unit Testing Framework
The repository features an embedded, robust testing environment designed for automated grading and test-case validation:
* **Dynamic Assertions:** Uses `assert-eq` combined with `eval` to validate function outputs against expected values.
* **Weighting & Scoring:** Capable of assigning weights to specific test suites (e.g., 80% weight for standard tests, 20% for edge cases) and generating a total score via `calculate-score`.
* **CLI Integration:** Parses command-line arguments (e.g., `--run_test=`, `--list_tests`) to run specific modules or output formatted results.

## 🛠️ Execution & Usage

You can run this script using any standard Scheme interpreter, such as GNU Guile, MIT Scheme, or Racket.

**Running with Guile:**
```bash
# Execute the script and run all automated tests
guile script_name.scm