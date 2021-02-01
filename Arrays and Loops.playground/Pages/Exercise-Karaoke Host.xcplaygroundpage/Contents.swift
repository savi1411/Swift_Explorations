/*:
## Exercise: Karaoke Host

 You have a friend who loves singing karaoke with a big group of people. The karaoke singers add songs they’d like to sing to a list and the karaoke host calls out the songs one by one. 
 
 Your friend and has asked you to write software to help manage the song list.

 - callout(Exercise): 
 Create an empty array to hold song titles as strings, and use the `append` method to add three or four songs one at a time.
 */
var songs = [String]()
songs.append("Run to the Hills")
songs.append("One")
songs.append("Paranoid")
songs.append("Round About")
songs.append("Stairway to Heaven")
songs.append("Another Brick in the Wall")

var singers = ["Pessoa 1", "Pessoa 2", "Pessoa 3", "Pessoa 4", "Pessoa 5", "Pessoa 6",]
/*:
 - callout(Exercise): 
 One enthusiastic singer wants to add three songs at once. Create an array holding this one singer's song list and use the `+=` operator to append their whole list to the end of the group's song list.
 */
let songsEnthusiastic = ["Brasília Amarela", "Gita", "Balão Mágico"]
songs += songsEnthusiastic
print(songs)
print(singers)
/*:
 - callout(Exercise): 
 Write a `for…in` loop and, for every song title in the array, print an encouraging announcement to let the next singer know that it's their turn.
 */
print("Relação de músicas:")
// Apenas a relação de músicas (enunciado do exercício)
for item in songs {
    print(item)
}

songs.shuffle()
singers.shuffle()
print("Veja a música que você irá cantar:")
// Solução mais avançada - exibe também o número da música
for index in 0..<singers.count {
    print("\(index + 1): \(songs[index]) - \(singers[index])")
}

/*:
 - callout(Exercise): 
 After the loop has called everyone up to sing, use the `removeAll` method on the song list to clear out all the past songs.
 */
songs.removeAll()
singers.removeAll()
/*:
[Previous](@previous)  |  page 14 of 18  |  [Next: Exercise: Counting Votes](@next)
 */
