/*:
## Enums
 
 Em nossas aulas vimos que os *enums* podem ser muito úteis para representar conjuntos finitos de dados, tornando o código conciso e limpo. Iremos colocar esse conceito em prática neste exercício.
 */
//:  - callout(Exercício): Um desenvolvedor construiu o algoritmo abaixo, visando descobrir o signo do zodíaco de uma pessoa a partir da data de nascimento. Ele, porém, talvez por não conhecer o tipo *enumeration* da linguagem Swift, utilizou literais de string para representar os meses e os signos, visto que esses tipos de dados caberiam muito bem numa enumeração. O seu papel será criar uma nova versão deste código utilizando *enum* para representar os meses e os signos. Atenção: os resultados devem ser os mesmos da versão original.

/*
    Tabela de emojis de signos
    
    ♒️ - Aquário
    ♉️ - Touro
    ♈️ - Áries
    ♍️ - Virgem
    ♎️ - Libra
    ♑️ - Capricórnio
    ♋️ - Câncer
    ♐️ - Sagitário
    ♌️ - Leão
    ♏️ - Escorpião
    ♊️ - Gêmeos
    ♓️ - Peixes
 
 */

// Código-fonte original
//let day = 14
//let month = "novembro"
//var sign = String()
//
//if month == "dezembro" {
//    if day < 22 { sign = "♐️" } else { sign = "♑️" }
//} else if month == "janeiro" {
//    if day < 20 { sign = "♑️" } else { sign = "♒️" }
//} else if month == "fevereiro" {
//    if day < 19 { sign = "♒️" } else { sign = "♓️" }
//} else if month == "março" {
//    if day < 21 { sign = "♓️" } else { sign = "♈️" }
//} else if month == "abril" {
//    if day < 20 { sign = "♈️" } else { sign = "♉️" }
//} else if month == "maio" {
//    if day < 21 { sign = "♉️" } else { sign = "♊️" }
//} else if month == "junho" {
//    if day < 21 { sign = "♊️" } else { sign = "♋️" }
//} else if month == "julho" {
//    if day < 23 { sign = "♋️" } else { sign = "♌️" }
//} else if month == "agosto" {
//    if day < 23 { sign = "♌️" } else { sign = "♍️" }
//} else if month == "setembro" {
//    if day < 23 { sign = "♍️" } else { sign = "♎️" }
//} else if month == "outubro" {
//    if day < 23 { sign = "♎️" } else { sign = "♏️" }
//} else if month == "novembro" {
//    if day < 22 { sign = "♏️" } else { sign = "♐️" }
//}
//print("Seu signo é: \(sign)", terminator:" - ")
//switch sign {
//    case "♒️": print("Aquário")
//    case "♉️": print("Touro")
//    case "♈️": print("Áries")
//    case "♍️": print("Virgem")
//    case "♎️": print("Libra")
//    case "♑️": print("Capricórnio")
//    case "♋️": print("Câncer")
//    case "♐️": print("Sagitário")
//    case "♌️": print("Leão")
//    case "♏️": print("Escorpião")
//    case "♊️": print("Gêmeos")
//    case "♓️": print("Peixes")
//    default: print("nao foi possível determinar")
//}

// Codifique aqui sua versão, utilizando enum

enum sign{
    case Aquario, Touro, Aries, Virgem, Libra, Capriconio, Cancer, Sagitario, Leao, Escorpiao, Gemeos, Peixes
}

enum mounths{
    case Janeiro, Fevereiro, Marco, Abril, Maio, Junho, Julho, Agosto, Setembro, Outubro, Novembro, Dezembro
}




func testSign(mes: mounths, dia: Int) -> String{
    let meses = mes
    var msg = String()
    switch meses {
    case .Janeiro:
        if dia >= 20 {
            msg = "Aquario"
        }else{
            msg = "Capricornio"
        }
    case .Fevereiro:
        if dia >= 19 {
            msg = "Peixes"
        }else{
            msg = "Aquario"
        }
    case .Marco:
        if dia >= 21 {
            msg = "Aries"
        }else{
            msg = "Peixes"
        }
    case .Abril:
        if dia >= 20 {
            msg = "Touro"
        }else{
            msg = "Aries"
        }
    case .Maio:
        if dia > 21 {
            msg = "Gemeos"
        }else{
            msg = "Touro"
        }
    case .Junho:
        if dia >= 21 {
            msg = "Cancer"
        }else{
            msg = "Gemeos"
        }
    case .Julho:
        if dia >= 23 {
            msg = "Leão"
        }else{
            msg = "Cancer"
        }
    case .Agosto:
        if dia >= 23 {
            msg = "Virgem"
        }else{
            msg = "Leão"
        }
    case .Setembro:
        if dia >= 23 {
            msg = "Libra"
        }else{
            msg = "Virgem"
        }
    case .Outubro:
        if dia >= 23 {
            msg = "Escopiao"
        }else{
            msg = "Libra"
        }
    case .Novembro:
        if dia >= 22 {
            msg = "Sagitario"
        }else{
            msg = "Escopião"
        }
    case .Dezembro:
        if dia >= 22 {
            msg = "Capricornio"
        }else{
            msg = "Sagitario"
        }
    }
    return msg
}

print(testSign(mes: .Marco, dia: 21))


/*:
 Veja a tabela de signos por intervalo de datas:

 ![signos](signos.png)


 Para mais informações, consulte: [The Swift Programming Language.](https://docs.swift.org/swift-book/LanguageGuide/Enumerations.html)


[Anterior](@previous)  |  página 3 de 6  |  [Próximo: Enums e Switch](@next)
 */
