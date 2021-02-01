/*:
## Funções
 Como sabermos que funções é um tópico essencial em lógica de programação, iremos reforçar esse conceito com mais alguns exercícios.
 
 Vamos supor que queremos dar uma mensagem de boas-vindas a quem logar em nosso sistema. Se não conhecêssemos funções, faríamos da seguinte forma:
 */
//print("Olá, Andrey, a Foursys dá as boas-vindas ao treinamento de iOS")
//print("Olá, Cassiane, a Foursys dá as boas-vindas ao treinamento de iOS")
//print("Olá, David, a Foursys dá as boas-vindas ao treinamento de iOS")
//print("Olá, Diego, a Foursys dá as boas-vindas ao treinamento de iOS")
//print("Olá, Flávia, a Foursys dá as boas-vindas ao treinamento de iOS")
//print("Olá, Jonatan, a Foursys dá as boas-vindas ao treinamento de iOS")
//print("Olá, Victor, a Foursys dá as boas-vindas ao treinamento de iOS")
//print("Olá, Willian, a Foursys dá as boas-vindas ao treinamento de iOS")

//:  - callout(Exercício 1): O código acima está bastante repetitivo não é mesmo? Imagine codificar desta forma para a turma de Java, que tem muito mais alunos. Sendo assim, crie uma função que receba como argumento o nome do aluno e imprima a mensagem de boas-vindas, sem retornar nenhum valor. Para testar a função, efetue a chamada passando como parâmetro o nome de cada aluno:

// Codifique aqui a função
func helloTrainee(nome: String) {
    print("Olá, \(nome), a Foursys dá as boas-vindas ao treinamento de iOS")
}


// Codifique aqui as chamadas da função
helloTrainee(nome: "Andrey")
helloTrainee(nome: "Cassiane")
helloTrainee(nome: "David")
helloTrainee(nome: "Diego")
helloTrainee(nome: "Flávia")
helloTrainee(nome: "Janatan")
helloTrainee(nome: "Victor")
helloTrainee(nome: "Willian")


//:  - callout(Exercício 2): Com a solução do primeiro exercício já tivemos uma melhora do código, porém recebemos uma nova solicitação para separar a identificação do aluno em nome e sobrenome. Sendo assim, crie uma nova versão da função com dois argumentos, e adapte as chamadas de função para passar a utilizar dois argumentos:

// Codifique aqui a função
func helloTrainee(nome: String, sobrenome: String) {
    print("Olá, \(nome)" + " \(sobrenome), a Foursys dá as boas-vindas ao treinamento de iOS")
}


// Codifique aqui as chamadas da função
helloTrainee(nome: "Andrey", sobrenome: "Masiero")
helloTrainee(nome: "Cassiane", sobrenome: "da Silva")
helloTrainee(nome: "David", sobrenome: "de Oliveira")
helloTrainee(nome: "Diego", sobrenome: "Lazanha")
helloTrainee(nome: "Flávia", sobrenome: "Amorim")
helloTrainee(nome: "Victor", sobrenome: "Otavio")
helloTrainee(nome: "Willian", sobrenome: "Gonçalves")

//:  - callout(Exercício 3): Após uma revisão de código, o time decidiu refatorar a função desenvolvida nos exercícios acima para que ela prepare a mensagem de boas-vindas, mas não imprima a mensagem. Sendo assim, crie mais uma versão da função que receba os argumentos e retorne a mensagem de boas-vindas. Quem chamou a função é quem deve receber a mensagem e imprimir seu conteúdo:

// Codifique aqui a função
func helloTraineeRefactored(nome: String, sobrenome: String) -> String {
    return "Olá, \(nome)" + " \(sobrenome), a Foursys dá as boas-vindas ao treinamento de iOS"
}


// Codifique aqui as chamadas da função
print(helloTraineeRefactored(nome: "Andrey", sobrenome: "Masiero"))
print(helloTraineeRefactored(nome: "Cassiane", sobrenome: "da Silva"))
print(helloTraineeRefactored(nome: "David", sobrenome: "de Oliveira"))
print(helloTraineeRefactored(nome: "Diego", sobrenome: "Lazanha"))
print(helloTraineeRefactored(nome: "Flávia", sobrenome: "Amorim"))
print(helloTraineeRefactored(nome: "Victor", sobrenome: "Otavio"))
print(helloTraineeRefactored(nome: "Willian", sobrenome: "Gonçalves"))


/*:
  Para mais informações, consulte: [The Swift Programming Language.](https://docs.swift.org/swift-book/LanguageGuide/Functions.html)

[Anterior](@previous)  |  página 2 de 6 |  [Próximo: Tomada de Decisões](@next)
 */
