/*:
## Funções
 Como sabermos que funções é um tópico essencial em lógica de programação, iremos reforçar esse conceito com mais alguns exercícios.
 
 Vamos supor que queremos dar uma mensagem de boas-vindas a quem logar em nosso sistema. Se não conhecêssemos funções, faríamos da seguinte forma:
 */

//:  - callout(Exercício 1): O código acima está bastante repetitivo não é mesmo? Imagine codificar desta forma para a turma de Java, que tem muito mais alunos. Sendo assim, crie uma função que receba como argumento o nome do aluno e imprima a mensagem de boas-vindas, sem retornar nenhum valor. Para testar a função, efetue a chamada passando como parâmetro o nome de cada aluno:

// Codifique aqui a função
func welcomeStundent(student: String){
    print("Olá, \(student), a Foursys dá as boas-vindas ao treinamento de iOS")
}


// Codifique aqui as chamadas da função

welcomeStundent(student: "Andrey")
welcomeStundent(student: "Cassiane")
welcomeStundent(student: "David")
welcomeStundent(student: "Diego")
welcomeStundent(student: "Flavia")
welcomeStundent(student: "Jonatan")
welcomeStundent(student: "Victor")
welcomeStundent(student: "Willian")

//:  - callout(Exercício 2): Com a solução do primeiro exercício já tivemos uma melhora do código, porém recebemos uma nova solicitação para separar a identificação do aluno em nome e sobrenome. Sendo assim, crie uma nova versão da função com dois argumentos, e adapte as chamadas de função para passar a utilizar dois argumentos:

// Codifique aqui a função
func welcomeStundentLastName(_ firstName: String, _ lastName: String){
    print("Olá, \(firstName) \(lastName), a Foursys dá as boas-vindas ao treinamento de iOS")
}


// Codifique aqui as chamadas da função
welcomeStundentLastName("Andrey", "**")
welcomeStundentLastName("Cassiane", "**")
welcomeStundentLastName("David", "**")
welcomeStundentLastName("Diego", "**")
welcomeStundentLastName("Flavia", "**")
welcomeStundentLastName("Jonatan", "**")
welcomeStundentLastName("Victor", "**")
welcomeStundentLastName("Willian", "**")


//:  - callout(Exercício 3): Após uma revisão de código, o time decidiu refatorar a função desenvolvida nos exercícios acima para que ela prepare a mensagem de boas-vindas, mas não imprima a mensagem. Sendo assim, crie mais uma versão da função que receba os argumentos e retorne a mensagem de boas-vindas. Quem chamou a função é quem deve receber a mensagem e imprimir seu conteúdo:
// Codifique aqui a função
func welcomeStundentReturn(_ firstName: String, _ lastName: String) -> String{
    return "Olá, \(firstName) \(lastName), a Foursys dá as boas-vindas ao treinamento de iOS"
}


// Codifique aqui as chamadas da função
var msg = String()
msg = welcomeStundentReturn("Andrey", "**")
print(msg)
msg = welcomeStundentReturn("Cassiane", "**")
print(msg)
msg = welcomeStundentReturn("David", "**")
print(msg)
msg = welcomeStundentReturn("Diego", "**")
print(msg)
msg = welcomeStundentReturn("Flavia", "**")
print(msg)
msg = welcomeStundentReturn("Jonatan", "**")
print(msg)
msg = welcomeStundentReturn("Victor", "**")
print(msg)
msg = welcomeStundentReturn("Willian", "**")
print(msg)



/*:
  Para mais informações, consulte: [The Swift Programming Language.](https://docs.swift.org/swift-book/LanguageGuide/Functions.html)

[Anterior](@previous)  |  página 2 de 6 |  [Próximo: Tomada de Decisões](@next)
 */
