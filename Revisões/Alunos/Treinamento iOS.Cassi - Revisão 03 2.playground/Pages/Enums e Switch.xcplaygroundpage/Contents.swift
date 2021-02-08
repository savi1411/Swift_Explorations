/*:
## Enums e Switch
 Estudamos que os *enums* funcionam muito bem quando utilizados junto à estrutura *switch*, deixando o código claro e conciso. Neste exercício iremos analisar uma situação interessante, que calcula uma taxa de frete:
 
  ![enum](enum.jpg)
 
*/
//:  - callout(Exercício): Após a execução do code snippet mostrado na figura acima, qual será o resultado exibido na console?
/*:
- `a) "You saved $5 with free shipping~!"`
- `b) "You saved a lot!"`
- `c) "Shipping will cost $5"`
- `d) "This could get expensive"`
 */
enum ShippingType {
    case flatRate
    case weightBased
}

let freeShipping = true
let packageWight = 12.5
let shippingType: ShippingType = packageWight < 5 ? .flatRate:.weightBased
if freeShipping {
    switch shippingType {
    case .flatRate:
        print("You saved $5 with free shipping")
    default:
        print ("You saved a lot")
    }
} else {
    switch shippingType {
    case .flatRate:
        print ("Shipping will cost $5")
    default:
        print("This could get expensive")
    }
}
/* Coloque sua resposta neste comentário:

    Resposta: [ b ]
 
 */


/*:
  Para mais informações, consulte: [The Swift Programming Language.](https://docs.swift.org/swift-book/LanguageGuide/Enumerations.html)


[Anterior](@previous)  |  página 4 of 6 |  [Próximo: Contando Votos](@next)
 */


