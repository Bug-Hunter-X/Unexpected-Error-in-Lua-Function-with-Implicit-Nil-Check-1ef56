# Lua Function with Implicit Nil Check

This repository demonstrates a subtle bug in a Lua function that arises from an implicit nil check combined with an attempt to perform arithmetic on a potentially nil value. The function `foo` correctly handles the case where the input `x` is nil, returning nil as expected. However, when the function is called without an argument, the implicit nil causes an unexpected error instead of returning nil. 

## Bug
The bug stems from how Lua implicitly handles missing arguments. If `foo()` is called without an argument, `x` is not only `nil`, but the subsequent attempt to perform arithmetic on this `nil` value (`x + 1`) throws an error instead of gracefully handling the `nil` case.

## Solution
The solution involves explicitly checking for the number of arguments to the function using `select('#', ...)` to ensure that the function always handles the case when `x` is missing.