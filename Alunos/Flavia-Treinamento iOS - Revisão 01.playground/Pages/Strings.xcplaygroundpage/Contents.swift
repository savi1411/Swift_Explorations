/*:
## Strings
 
 Em nossas aulas estudamos a importância das strings e como elas podem ser manipuladas por um programa, como por exemplo através de concatenação e interpolação.
 
 Vimos também que, na liguagem Swift, elas são declaradas entre aspas, e são do tipo *String*.
 
 */
//:  - callout(Exercício): A sua sobrinha está aprendendo lógica de programação e quer impressionar o professor com um exercício que foi passado. Ela tem que montar a letra de uma música preenchendo algumas palavras-chave em tempo de execução, porém ela não sabe como fazer isso. Consegue ajudá-la?
/*:
As palavras chave são essas:

- `viajar`
- `férias`
- `amor`
- `viver`

 Essa é a letra da música, com os espaços onde as palavras-chave devem inseridas:
 
 Eu vou ______, vou passear, ______ de ____
 Junto com você meu ___ vou ter, ______ de ____
 Como é lindo amar, como é bom sonhar, ______ de ____
 Vamos conhecer coisas do _____, ______ de ____
 */
let travel = "viajar"
let vacation = "férias"
let love = "amor"
let toLive = "viver"

let solution = """
Eu vou \(travel), vou passear, \(vacation) de \(love).
Junto com você meu \(love) vou ter, \(vacation) de \(love).
Como é lindo amar, como é bom sonhar, \(vacation) de \(love).
Vamos conhecer coisas do \(toLive), \(vacation) de \(love).
"""

print(solution)


/*:
  Para mais informações, consulte: [The Swift Programming Language.](https://docs.swift.org/swift-book/LanguageGuide/StringsAndCharacters.html)


[Anterior](@previous)  |  página 4 of 7  |  [Próximo: Funções](@next)
 */
