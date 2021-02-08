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
var day = 14
var month = "novembro"
var sign = String()

if month == "dezembro" {
    if day < 22 { sign = "♐️" } else { sign = "♑️" }
} else if month == "janeiro" {
    if day < 20 { sign = "♑️" } else { sign = "♒️" }
} else if month == "fevereiro" {
    if day < 19 { sign = "♒️" } else { sign = "♓️" }
} else if month == "março" {
    if day < 21 { sign = "♓️" } else { sign = "♈️" }
} else if month == "abril" {
    if day < 20 { sign = "♈️" } else { sign = "♉️" }
} else if month == "maio" {
    if day < 21 { sign = "♉️" } else { sign = "♊️" }
} else if month == "junho" {
    if day < 21 { sign = "♊️" } else { sign = "♋️" }
} else if month == "julho" {
    if day < 23 { sign = "♋️" } else { sign = "♌️" }
} else if month == "agosto" {
    if day < 23 { sign = "♌️" } else { sign = "♍️" }
} else if month == "setembro" {
    if day < 23 { sign = "♍️" } else { sign = "♎️" }
} else if month == "outubro" {
    if day < 23 { sign = "♎️" } else { sign = "♏️" }
} else if month == "novembro" {
    if day < 22 { sign = "♏️" } else { sign = "♐️" }
}
print("Seu signo é: \(sign)", terminator:" - ")
switch sign {
    case "♒️": print("Aquário")
    case "♉️": print("Touro")
    case "♈️": print("Áries")
    case "♍️": print("Virgem")
    case "♎️": print("Libra")
    case "♑️": print("Capricórnio")
    case "♋️": print("Câncer")
    case "♐️": print("Sagitário")
    case "♌️": print("Leão")
    case "♏️": print("Escorpião")
    case "♊️": print("Gêmeos")
    case "♓️": print("Peixes")
    default: print("nao foi possível determinar")
}

// Codifique aqui sua versão, utilizando enum

enum zodiacSign {
    case dezembro, janeiro, fevereiro, março, abril, maio, junho, julho, agosto, setembro, outubro, novembro
     
    var sign: String {
        switch  self {
        case .dezembro:
            if day < 22 { return "♐️ Sagitário" }
            else {return "♑️ Capricórnio" }
        case .janeiro:
            if day < 20 {return "♑️ Capricórnio" }
            else { return "♒️ Aquário" }
        case .fevereiro:
            if day < 19 { return " ♒️ Aquário" }
            else { return "♓️ Peixes" }
        case .março:
            if day < 21 { return "♓️ Peixes" }
            else { return " ♈️ Aries" }
        case .abril:
            if day < 20 { return "♈️ Aries"}
            else { return "♉️ Touro" }
        case .maio:
            if day < 21 { return " ♉️ Touro" }
            else {return "♊️ Gêmeos" }
        case .junho:
    if day < 21 { return "♊️ Gêmeos" }
            else { return "♋️ Câncer" }
        case .julho:
            if day < 21 { return "♊️ Câncer" }
            else { return "♌️ Leão" }
        case .agosto:
            if day < 23 { return "♌️ Leão" }
            else { return "♍️ Virgem"}
        case .setembro:
            if day < 23 { return "♍️ Virgem" }
            else {return "♎️ Libra" }
        case .outubro:
            if day < 23 { return "♎️ Libra" }
            else { return "♏️ Escorpião" }
        case .novembro:
            if day < 22 { return "♏️ Escorpião" }
            else { return "♐️ Sagitário" }
            
            
        }
    }
    
}
day = 30
let myBirthDate = zodiacSign.agosto
myBirthDate.sign
/*:
 Veja a tabela de signos por intervalo de datas:

 ![signos](signos.png)


 Para mais informações, consulte: [The Swift Programming Language.](https://docs.swift.org/swift-book/LanguageGuide/Enumerations.html)


[Anterior](@previous)  |  página 3 de 6  |  [Próximo: Enums e Switch](@next)
 */
