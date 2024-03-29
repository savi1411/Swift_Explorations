/*:
## Loops
 Na primeira revisão do curso desenvolvemos um exercício para entender como é importante manter um bom controle de constantes e variáveis para evitarmos erros inesperados.
 
 Porém ao revisitar o código do exercício resolvido (abaixo), vemos que ainda há muitas oportunidade de melhoria, como itens repetidos e lógica redundante.
 
 Portanto iremos trabalhar agora numa refatoração deste código.
 
 */
//:  - callout(Exercício): Reescreva o código a seguir para eliminar as repetições e redundâncias. Sugerimos como fator essencial a utilização de um loop do tipo for-in ou repeat-while. Ao efetuar testes da nova solução, certifique-se que os resultados sejam os mesmos da versão original.

// Código original
var questions = [
    "1. the process of converting a high-level language to machine language is known as compilations",
    "2. A source file contains code written in a programming language that is to be sent to the compiler",
    "3. Careful design of software can result in programs that will be efficient, error-free, and easy to maintain",
    "4. Writing code is the first step in the waterfall model of developing software",
    "5. Pseudo-code and flowcharts can be used to represent individual algorithms of a program",
    "6. Pseudo-code uses exact programming language syntax to represent a module in the larger program",
    "7. The C programming language is considered a structured programming language",
    "8. Select meaningful identifiers (names) for all the variables in the program",
    "9. the return statement cannot contain an expression",
    "10. Variables are named memory locations that have a type"
]
var answers = [
    "true",
    "true",
    "true",
    "false",
    "true",
    "false",
    "true",
    "true",
    "false",
    "true"
]

var userAnswers = [
    "false",
    "true",
    "true",
    "false",
    "true",
    "false",
    "true",
    "true",
    "false",
    "true"
]


var score = 0

for i in 0..<questions.count {
    if answers[i] == userAnswers[i] {
        score += 10
    }
}
print("O total de pontos é \(score)")



//var index = 0
//var score = 0
//print(questions[index])
//if answers[index] == "true" {
//    score += 10
//}
//
//index = 1
//print(questions[index])
//if answers[index] == "true" {
//    score += 10
//}
//
//index = 2
//print(questions[index])
//if answers[index] == "true" {
//    score += 10
//}
//
//index = 3
//print(questions[index])
//if answers[index] == "false" {
//    score += 10
//}
//
//index = 4
//print(questions[index])
//if answers[index] == "true" {
//    score += 10
//}
//
//index = 5
//print(questions[index])
//if answers[index] == "false" {
//    score += 10
//}
//
//index = 6
//print(questions[index])
//if answers[index] == "true" {
//    score += 10
//}
//
//index = 7
//print(questions[index])
//if answers[index] == "true" {
//    score += 10
//}
//
//index = 8
//print(questions[index])
//if answers[index] == "false" {
//    score += 10
//}
//
//index = 9
//print(questions[index])
//if answers[index] == "true" {
//    score += 10
//}
//print("O total de pontos é \(score)")



// Insira aqui o código refatorado



/*:
  Para mais informações, consulte: [The Swift Programming Language.](https://docs.swift.org/swift-book/LanguageGuide/ControlFlow.html)


[Anterior](@previous)  |  página 6 of 6 |
 */

