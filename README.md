# SlicePrices
The code provided solves the problem of maximizing profit when buying different-sized slices of cake, given a maximum cake size. The problem involves choosing the optimal combination of cake slices to maximize the total profit.

The program takes two input values: n represents the maximum cake size, and m represents the number of available cake slices for purchase. The user is then prompted to enter the size and price of each cake slice.

The code uses dynamic programming to calculate the maximum profit possible. It creates a memory array with a size of n+1, where each element represents the maximum profit achievable for a given cake size. The memory array is initially filled with zeros.

Next, the program iterates through the list of cake slices and updates the memory array with the maximum profit for each cake size. This is done using the 0-1 knapsack problem approach, where the expression memo.(i) <- max memo.(i) (price + memo.(i-size)) calculates the maximum profit for a given cake size i by considering whether including the current cake slice would result in a higher profit.

Finally, the program outputs the maximum profit achievable and a newline character.

This code provides an efficient solution to the cake slicing problem and can be used to optimize profit in various scenarios where different-sized cake slices are available for purchase.
