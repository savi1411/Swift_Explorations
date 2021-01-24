/*:
## Other Favorite Things
 
 The favorite food function you created earlier is OK but perhaps a bit limited. What if you have a favorite animal or a favorite color?
 The following code is a more flexible version:

```
 let categoryOfThing = "food"
 let favorite = "cheese"
 print("My favorite \(categoryOfThing) is \(favorite)")
```

 - callout(Exercise): Put the print statement above inside a function that allows you to pass in one string for the category of thing, and another string for your favorite. When you call the function, it should look like this:\
 `printFavorite(categoryOfThing: "food", favorite: "cheese")`
 */
// Function by Willian
func favoriteStuff(categoryOfThing: String, favorite: String) {
    print("Meu \(categoryOfThing) favorito é \(favorite)")
}

favoriteStuff(categoryOfThing: "bombom", favorite: "tortuguita")
favoriteStuff(categoryOfThing: "food", favorite: "cheese")
favoriteStuff(categoryOfThing: "phone", favorite: "iPhone")
favoriteStuff(categoryOfThing: "car", favorite: "Mini")
favoriteStuff(categoryOfThing: "movie", favorite: "Blade Runner")

// Sem função
//var categoryOfThing = "food"
//var favorite = "cheese"
//print("My favorite \(categoryOfThing) is \(favorite)")
//
//categoryOfThing = "phone"
//favorite = "iPhone"
//print("My favorite \(categoryOfThing) is \(favorite)")
//
//categoryOfThing = "car"
//favorite = "Mini"
//print("My favorite \(categoryOfThing) is \(favorite)")
//
//categoryOfThing = "movie"
//favorite = "Blade Runner"
//print("My favorite \(categoryOfThing) is \(favorite)")
/*:
You’ve learned how to pass information in to a function. Now learn how to get information out.

[Previous](@previous)  |  page 5 of 18  |  [Next: Getting Values Back](@next)
 */
