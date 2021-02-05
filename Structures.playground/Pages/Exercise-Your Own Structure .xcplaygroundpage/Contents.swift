/*:
## Exercise: Your Own Structure
 When you worked through the Types playground, you had a chance to think about some real-world examples of types and the associated types they might depend on. A `TrainingShoe` type, for example, might have a `size` property that's an `Int`, a `brandName` that's a `String`, and a `releaseDate` that's a `Date`.

 - callout(Exercise): 
 Think of another real-world object and its properties. Make up some actions or behaviors that the object might be able to perform. Write them all in plain English first in a comment:
 */
 // Add your English-language description of the type here. Make sure to add // before each line of your comment description.

/*
 Computer:
 - screenSize - imutável - Double
 - totalRAMinMB - mutável - Int
 - manufacturer - imutável - String
 - isOn - mutável - indica se o computador está ligado/desligado
 - turnOnOff - métodos de instância para ligar/desligar

  */

// Crie a estrutura baseado nas caracteríticas acima
struct Computer {
    let screenSize: Double
    var totalRAMinMB: Int
    let manufacturer: String
    var isOn: Bool
    
    mutating func turnOnOff(mode: Bool) {
        isOn = mode
        
//        if isOn {
//            print("Ligando o computador...")
//        } else {
//            print("Desligando o computador...")
//        }
        
        // Usando operador ternário
        print(isOn ? "Ligando o computador..." : "Desligando o computador...")

    }
    
    func isComputerOn() -> String {
//        if isOn {
//            return "O computador está ligado"
//        } else {
//            return "O computador está desligado"
//        }
        
        // Usando o operador ternário
        return isOn ? "O computador está ligado" : "O computador está desligado"
    }
    
//    func isComputerOn() -> Bool {
//        return isOn
//    }
    
}

var macBook = Computer(screenSize: 13.5, totalRAMinMB: 8, manufacturer: "Apple", isOn: false)

print(macBook.isComputerOn())
macBook.turnOnOff(mode: true)
print(macBook.isComputerOn())

//macBook.screenSize = 15 - imutável
macBook.totalRAMinMB = 16

macBook.turnOnOff(mode: false)
print(macBook.isComputerOn())

/*:
 - callout(Exercise): 
 Using the `struct` syntax from this lesson, create a type for your real-world object with the properties and methods you thought of. Remembering to mark each property with `let` or `var` depending on whether or not it will be allowed to change. If you're not sure how to implement the body of one of the methods, describe what the method should do in a comment.\
 *Hint: If you made any properties with custom types, you can create placeholder types that have empty implementations. (See the TrainingShoe code at the bottom of this page for an example.) The placeholder type below will make sure your playground can run without errors.*
 
 > If you make a method that tries to change a property of your struct, you'll see the error "`Cannot assign to property: 'self' is immutable`." Structs have special rules about methods that try to change the values of their properties. To get rid of the error, use the keyword `mutating` in your method declaration, like so: `mutating func myMethodThatChangesAProperty()`
 */
// Add your own struct here:

/*:
 - callout(Exercise): 
 Use the struct you created to make a new instance of your type.
 */

//:  - Note: Here's an example of a placeholder type used for making a TrainingShoe:
// Placeholder type
struct Shoelaces {

}

struct TrainingShoe {
    let size: Int
    var isTied: Bool
    var laces: Shoelaces

    func squeak() {
        // Make a loud noise like rubber squealing on a gym floor
    }

    func warnAboutLaces() {
        // If laces are untied, print a reminder to tie them
    }
}

// Create an instance of the placeholder type
let newLaces = Shoelaces()

// Use the instance of the placeholder type to create an instance of your new type
let newShoe = TrainingShoe(size: 39, isTied: true, laces: newLaces)


/*:
  _Copyright © 2020 Apple Inc._
 
 _Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:_
 
 _The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software._
 
 _THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE._
 
[Previous](@previous)  |  page 10 of 10
 */
