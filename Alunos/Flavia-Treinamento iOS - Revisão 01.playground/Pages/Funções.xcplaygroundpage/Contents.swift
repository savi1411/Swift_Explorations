/*:
## Funções
 
 Sabemos que código de programação pode ser simplificado e organizado através de funções, que entre outros benefícios evita repetições e redundâncias no código.
 
 Mesmo a forma mais simples de função em *swift* (sem parâmetros e valor de retorno) já pode trazer benefícios na organização do código.
 
 */
//:  - callout(Exercício): Observe o poema a seguir, de Carlos Drumond de Andrade. Observe que ele tem 10 linhas. Você consegue diminuir o número de linhas, porém sem alterar o significado do texto?
func midway() {
    print("No meio do caminho tinha uma pedra")
}

func hadAStone()  {
    print("Tinha uma pedra no meio do caminho")
}

func poema(){
    midway()
    hadAStone()
    print("Tinha uma pedra")
    midway()

    print("Nunca me esquecerei desse acontecimento")
    print("Na vida de minhas retinas tão fatigadas")
    print("Nunca me esquecerei que no meio do caminho")
    print("Tinha uma pedra")
    hadAStone()
    midway()}

print (poema())

//print("No meio do caminho tinha uma pedra")
//print("Tinha uma pedra no meio do caminho")
//print("Tinha uma pedra")
//print("No meio do caminho tinha uma pedra")

//print("Nunca me esquecerei desse acontecimento")
//print("Na vida de minhas retinas tão fatigadas")
//print("Nunca me esquecerei que no meio do caminho")
//print("Tinha uma pedra")
//print("Tinha uma pedra no meio do caminho")
//print("No meio do caminho tinha uma pedra")


/*:
  Para mais informações, consulte: [The Swift Programming Language.](https://docs.swift.org/swift-book/LanguageGuide/Functions.html)


[Anterior](@previous)  |  página 5 of 7  |  [Próximo: Tipos](@next)
 */
