/*:
## Exercise: Goals

Think of a goal of yours that can be measured in progress every day, whether it’s minutes spent exercising, number of photos sent to friends, hours spent sleeping, or number words written for your novel.

 - callout(Exercise): Create an array literal with 20 to 25 items of sample data for your daily activity. It may be something like `let milesBiked = [3, 7.5, 0, 0, 17 ... ]` Feel free to make up or embellish the numbers, but make sure you have entries that are above, below and exactly at the goal you've thought of. _Hint: Make sure to choose the right kind of array for your data, whether `[Double]` or `[Int]`._
 */
// 1. Criar o array com o registro das atividades
let kmWalked: [Double] = [3, 7.5, 0, 0, 7, 9, 0, 0, 3, 2, 1]
//:  - callout(Exercise): Write a function that takes the daily number as an argument and returns a message as a string. It should return a different message based on how close the number comes to your goal. You can be as ambitious and creative as you'd like with your responses, but make sure to return at least two different messages depending on your daily progress!
// 2. Criar uma função que recebe a atividade diária (cada elemento do array) e retorna uma string indicando se atingiu a meta ou não
func goalAchieved(dailyNumber: Double) -> String {
    let goal = 5.0
    
    // Verifica se atingiu meta
    if dailyNumber >= goal {
        return "Parabéns, você atingiu a meta neste dia"
    } else {
        return "Neste dia você não atingiu a meta, mas continue tentando!"
    }
}
//:  - callout(Exercise): Write a `for…in` loop that iterates over your sample data, calls your function to get an appropriate message for each item, and prints the message to the console.
// 3. Chamada da função - loop sobre o array passando cada elemento para a função avaliar se atingiu a meta
for item in kmWalked {
    let msgRetorno: String = goalAchieved(dailyNumber: item)
    print(msgRetorno)
}
/*:
[Previous](@previous)  |  page 16 of 18  |  [Next: Exercise: Screening Messages](@next)
 */
