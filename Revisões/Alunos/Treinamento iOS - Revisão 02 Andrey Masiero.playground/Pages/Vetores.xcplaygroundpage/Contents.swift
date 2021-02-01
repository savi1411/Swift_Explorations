/*:
## Vetores
 Estudamos que vetores, ou *arrays*, é uma forma de criarmos uma lista ordenada de itens do mesmo tipo.
 
 A figura a seguir, por exemplo, contém um array que representa uma lista de compras:
 
  ![Array](Array.png)
 
*/
//:  - callout(Exercício): Visando tornar real o exemplo apresentado, codifique em Swift para concretizar as seguintes tarefas:
/*:
- `Crie um array com a lista apresentada no exemplo`
- `Acrescente os itens "Choco", "Beer", "Oranges", e "White Wine"`
- `Remova o item "Baking Powder"`
- `Modifique o item "Six Eggs" para "A dozen eggs"`
- `Certique-se que o item "Bananas" permaneça como último item da lista"`
 */

// Codifique aqui os comandos solicitados

var shopList = ["Six Eggs","Milk","Flour","Baking Powder","Bananas"]
shopList += ["Choco","Beer","Orange","White wine"]
let removeItem = shopList.firstIndex(of: "Baking Powder")!
shopList.remove(at: removeItem)
let findItem = shopList.firstIndex(of: "Six Eggs")!
shopList[findItem] = "A dozen eggs"
let finalItem = shopList.firstIndex(of: "Bananas")!
shopList.remove(at: finalItem)
shopList.append("Banana")



print(shopList)
/*:
  Para mais informações, consulte: [The Swift Programming Language.](https://docs.swift.org/swift-book/LanguageGuide/CollectionTypes.html)


[Anterior](@previous)  |  página 5 of 6 |  [Próximo: Loops](@next)
 */

