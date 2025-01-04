# Objective-C ARC Strong Reference Cycle in Blocks Memory Leak

This repository demonstrates a common Objective-C memory leak caused by strong reference cycles within blocks.  The example shows how to identify and correctly fix this type of memory leak.

## Problem

In Objective-C, when using Automatic Reference Counting (ARC), strong reference cycles within blocks can prevent objects from being deallocated, leading to memory leaks. The `bug.m` file contains code that exhibits this issue.

## Solution

The solution lies in using `weak` references within the block to break the strong reference cycle. The `bugSolution.m` file demonstrates the corrected code.

## How to reproduce

1. Clone this repository.
2. Open the project in Xcode.
3. Run the app. (Observe the memory usage - in the original implementation you will see a memory leak)
4. Examine and compare `bug.m` and `bugSolution.m` to understand how the weak reference breaks the cycle and solves the memory leak.
