/*:
## Estruturas e Classes
 Em nosso treinamento mencionamos que as estruturas e as classes possuem recursos muito parecidos. Neste exercício iremos explorar melhor essas diferenças e saber quando utilizar uma ou outra.
 */

 /*:
 - Experiment: A seguir está definida uma classe padrão em Swift, que segue os mesmos conceitos de classe do paradigma de orientação a objetos.
 */
 
class FlightClass {
    var id:Int
    var description:String
    var destination:String
    var airlines:String
    var status:String
    init(id: Int, description: String, destination: String, airlines: String, status: String) {
        self.id = id
        self.description = description
        self.destination = destination
        self.airlines = airlines
        self.status = status
    }
    func flightStatus(id: Int) -> String {
        if self.id == id {
            return status
        } else {
            return "vôo não encontrado"
        }
    }
}
 
//:  - callout(Exercício 1): Com os conhecimentos adquiridos na aula de Estruturas, codifique uma estrutura com as mesmas propriedades da classe declarada anteriormente:
struct ClassFligth {
    var id:Int
    var description:String
    var destination:String
    var airlines:String
    var status:String
    
    func flightStatus(id: Int) -> String {
        if self.id == id {
            return status
        } else {
            return "vôo não encontrado"
        }
    }
}



//:  - callout(Exercício 2): No código a seguir, a classe foi instanciada. Codifique o comando semelhante para instanciar a estrutura em Swift:

// Instancie a classe
var flight1 = FlightClass(id: 100, description: "first ever flight of Virgin Airlines", destination: "london", airlines: "Virgin Airlines", status: "delayed")

// Instancie a estrutura

var flight2 = ClassFligth (id: 001, description: ("first ever flight of Virgin Airlines"), destination: ("london"), airlines: ("Virgin Airlines"), status: ("delayed"))
//:  - callout(Exercício 3): No código a seguir, as propriedades e os métodos da classe foram referenciados. Codifique o comando semelhante para referenciar as propriedades da estrutura:

// Acesse as propriedades e métodos da classe
flight1.id
flight1.description
flight1.destination
flight1.airlines
flight1.status

flight1.flightStatus(id: 100)
flight1.flightStatus(id: 200)

// Acesse as propriedades e métodos da estrutura

flight2.id
flight2.description
flight2.destination
flight2.airlines
flight2.status

flight2.flightStatus(id: 100)
flight2.flightStatus(id: 200)
/*:
- Experiment: Você deve ter observado até aqui que as classes e estruturas são bastante parecidas. Mas na realidade elas possuem uma diferença importante no iOS. As classes são tipos de referência enquanto as estruturas são tipos de valor. Vamos entender melhor:
*/

// Quando você copia uma instância de uma classe, ela aponta para o mesmo endereço da instância original
flight1.status
let flight3 = flight1
flight3.status = "scheduled"
flight3.status
flight3.status      // !?!?!? Como isso é possível !?!?!?

// Faça o mesmo teste com a estrutura, e veja que o comportamento é diferente. Isso porque quando você copia uma instância de estrutura, a estrutura toda é copiada, e não apenas sua referência de memória.

flight1.status
let flight3 = flight1
flight3.status = "scheduled"
flight3.status
flight3.status
/*:
- Experiment: A conclusão é que você deve priorizar o uso de estruturas ao invés de classes. Os tipos de valor, como as estruturas, são mais rápidos, seguros e menos sujeitos a erros de gerenciamento de memória - *memory leaks*, ou ainda *deadlocks* causados por referências cruzadas. As classes são necessárias se você precisar de herança de propriedades e métodos, porém em Swift os protocolos podem substituir as classes neste quesito também. A única situação em que não se consegue se escapar das classes é quando você está trabalhando com frameworks nativos construídos sob o paradigma da orientação a objetos, como o UIKit. Mas para criar os seus próprios tipos, estude o novíssimo paradigma da orientação a protocolos. É fascinante!
*/
/*:
  Para mais informações, consulte: [The Swift Programming Language.](https://docs.swift.org/swift-book/LanguageGuide/ClassesAndStructures.html)


[Anterior](@previous)  |  página 2 de 6  |  [Próximo: Enums](@next)
 */
