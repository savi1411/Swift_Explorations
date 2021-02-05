/*:
## Counting Shows

 On this page, you'll create an algorithm to tabulate the responses from this simulated survey and display the results. You'll use the same basic procedure in following pages.

 There's a `randomShowData` array constant that simulates the results of a survey containing just 10 responses so you can test your code. It'll be different each time your code runs. (If you want, you can print the `randomShowData` to the console for verification.)
 */
randomShowData
//:  - callout(Exercise): Using the comments as a guide, tally the survey results simulated in `randomShowData`.
// Create a Tabulator instance.
var tabulator = Tabulator()

// Loop through the shows in randomShowData, incrementing the count for each one.
for item in randomShowData {
    tabulator.incrementCount(forValue: item)
}

// Loop through the tallied shows (stored in tabulator.values), printing the information from each one.
for item in tabulator.values {
    print("\(item): \(tabulator.count(forValue: item))")
}

// Rodando no array de 1000 resultados
print("*********------------**************")
// Create a Tabulator instance.
var tabulatorLarge = Tabulator()

// Loop through the shows in randomShowData, incrementing the count for each one.
for item in randomShowData {
    tabulatorLarge.incrementCount(forValue: item)
}

// Loop through the tallied shows (stored in tabulator.values), printing the information from each one.
for item in tabulatorLarge.values {
    print("\(item): \(tabulatorLarge.count(forValue: item))")
}

//: > There's also a `randomShowDataLargeSet` constant that simulates 1,000 survey results. Once you're satisfied that your code runs correctly, you can update your code to tabulate values from that array instead.
/*:
[Previous](@previous)  |  page 3 of 11  |  [Next: Data Errors](@next)
 */
