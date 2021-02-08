/*:
 ## Ranking
 
 Quando iniciamos o exercício de *ranking*, no playground que tratou de processamento de dados, imaginamos que os exercícios iriam nos levar a calcular o ranking sequencialmente, seja em ordem crescente ou decrescente.
 
 Mas na realidade o exercício utilizou cálculos estatísticos, dividindo os shows em camadas, mais ou menos populares.
 
 Para resgatar o sentimento que tivemos no momento de percorrer aquele *book*, iremos agora criar os rankings sequenciais.

 Para efeito de referência, o código original foi mantido para eventual referência.

 */
//// Create three arrays to store shows in each tier. You can choose to store `TabulatedValue` instances, or just strings.
//var notVeryPopular = [TabulatedValue]()
//var moderatelyPopular = [TabulatedValue]()
//var veryPopular = [TabulatedValue]()
//
//// Create constants to store the median and the median absolute deviation.
//let median = tabulator.median()
//let medianAbDev = tabulator.medianAbsoluteDeviation()
//
//for show in tabulator.tabulatedValues {
//    if show.count < median - medianAbDev {
//        // If the show's count is less than the median value minus the median absolute deviation, it's not very popular.
//        notVeryPopular.append(show)
//    } else if show.count > median + medianAbDev {
//        // If the show's count is greater than the median value plus the median absolute deviation, it's very popular.
//        veryPopular.append(show)
//    } else {
//        // Otherwise, it's moderately popular.
//        moderatelyPopular.append(show)
//    }
//}
//
//// Print out the shows in each tier.
//print("***** MENOS POPULARES *****")
//print(notVeryPopular)
//
//print("***** MAIS OU MENOS MENOS POPULARES *****")
//print(moderatelyPopular)
//
//print("***** MAIS POPULARES *****")
//print(veryPopular)

//: - callout(Exercício 1): Crie um ranking de shows, com popularidade em ordem crescente.
func indexOfOrder(from tabulatedValues: [TabulatedValue], isAscending: Bool) -> Int {
    var orderIndex = 0
    for index in 0 ..< tabulatedValues.count {
        if isAscending {
            // Ordem ascendente
            if tabulatedValues[index].count < tabulatedValues[orderIndex].count {
                orderIndex = index
            }
        } else {
            // Orderm decrescente
            if tabulatedValues[index].count > tabulatedValues[orderIndex].count {
                orderIndex = index
            }
        }

    }
    return orderIndex
}

// Create a new array variable for all shows and store the tabulated values in it.
var allShows = tabulator.tabulatedValues

// Create two empty arrays to store the most and least popular shows.
var mostPopular: [TabulatedValue] = []
var leastPopular: [TabulatedValue] = []

// Loop para colocar em ordem ascendente:
//  - Find the index of the maximum
//  - Append the show at that index to the most popular shows array
//  - Remove the show at that index from the all shows array
for _ in allShows {
    let maxIndex = indexOfOrder(from: allShows, isAscending: false)
    mostPopular.append(allShows[maxIndex])
    allShows.remove(at: maxIndex)
}

// Print out the most popular shows (ascending order)
print("O ranking de shows mais populares: \(mostPopular)")

// Loop para colocar em ordem descendente:
//  - Find the index of the minimum
//  - Append the show at that index to the least popular shows array
//  - Remove the show at that index from the all shows array
allShows = tabulator.tabulatedValues
for _ in allShows {
    let minIndex = indexOfOrder(from: allShows, isAscending: true)
    leastPopular.append(allShows[minIndex])
    allShows.remove(at: minIndex)
}
// Print out the least popular shows (descending order)
print("O ranking de shows menos populares: \(leastPopular)")

//: - callout(Exercício 2): Crie um ranking de shows, com popularidade em ordem decrescente.


//: - callout(Exercício 3): Será que é possível utilizar uma única função, e determinar como parâmetro a ordem do ranking? Se achar que sim, codifique essa solução.


//: [Anterior](@previous)  |  página 6 of 6

