/*:
## Exercise: Leap Years
 
 To decide if a year is a leap year, there are several decisions that have to be made in the correct order.
 
- Is the year divisible by 4?
    - If so, is the year divisible by 100?
        - If so, is the year divisible by 400?
            - If so, it is a leap year.
            - If not, it is **not** a leap year.
        - If it's not divisible by 100, it is a leap year.
    - If it's not divisible by 4, it is **not** a leap year.
 
 These decisions can be made inside a function as a series of nested `if...else` statements.
 
 The `number(_:, isDivisibleBy:)` function has been built into this playground to make this exercise easier. Below is an incomplete function for deciding if a given year is a leap year:
 */
func isLeapYear(_ year: Int) -> Bool {
    // Is the year divisible by 4?
    if number(year, isDivisibleBy: 4) {
        // If so, is the year divisible by 100?
        if number(year, isDivisibleBy: 100) {
            // If so, is the year divisible by 400?
            if number(year, isDivisibleBy: 400) {
                // If so, it is a leap year.
                return true
            } else {
                // If not, it is not a leap year.
                return false
            }
        } else {
            // If it's not divisible by 100, it is a leap year.
            return true
        }
    } else {
        // If it's not divisible by 4, it is not a leap year.
        return false
    }
}

// Should be true
isLeapYear(2000)
// Should be false
isLeapYear(1900)
// Should be true
isLeapYear(2012)
// Should be false
isLeapYear(2017)
// Should be true
isLeapYear(2052)
// Should be false
isLeapYear(2021)



/*:
 - callout(Exercise): Complete the function above so that the rules are all followed and the examples get the correct answers.
 \
_**Hint**_: Try using the rules as pseudocode by making them into comments. Then write the code that goes with each comment underneath it.
 */
/*:
 - callout(Exercise): For a challenge, complete the function below. It should behave identically without using any nested conditional statements.
 Use a single level of if/else statements along with conditionals that use Boolean operators.
 \
_**Hint**_: Create constants that represent the three key conditions, and then compose a Boolean expression with those constants.
 */
//func isLeapYear2(_ year: Int) -> Bool {
//}

// By Andrey
func isLeapYear2(_ year: Int) -> Bool {
    if (year % 4 == 0 && year % 100 != 0) || year % 400 == 0 {
        return true
    } else {
        return false
    }
}

// Should be true
isLeapYear2(2000)
// Should be false
isLeapYear2(1900)
// Should be true
isLeapYear2(2012)
// Should be false
isLeapYear2(2017)
// Should be true
isLeapYear2(2052)
// Should be false
isLeapYear2(2021)

// Solução usando booleanos
func isLeapYear3(_ year: Int) -> Bool {
    let divisibleBy4 = number(year, isDivisibleBy: 4)
//    print("Divisível por 4: \(divisibleBy4)")
    let divisibleBy100 = number(year, isDivisibleBy: 100)
//    print("Divisível por 100: \(divisibleBy100)")
    let divisibleBy400 = number(year, isDivisibleBy: 400)
//    print("Divisível por 400: \(divisibleBy400)")
    
    if divisibleBy4 && (!divisibleBy100 || divisibleBy400) {
        return true
    } else {
        return false
    }
}

// Should be true
isLeapYear3(2000)
// Should be false
isLeapYear3(1900)
// Should be true
isLeapYear3(2012)
// Should be false
isLeapYear3(2017)
// Should be true
isLeapYear3(2052)
// Should be false
isLeapYear3(2021)

/*:
  _Copyright © 2020 Apple Inc._
 
 _Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:_
 
 _The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software._
 
 _THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE._
 */
 
/*:
[Previous](@previous)  |  page 15 of 15
 */
