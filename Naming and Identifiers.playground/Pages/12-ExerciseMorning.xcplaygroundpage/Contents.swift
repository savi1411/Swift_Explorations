/*:
## Exercise: Fixing Your Morning
 
 There’s a lot to do before you leave home in the morning. This exercise will help you optimize your routine.

 - callout(Exercise): Create a constant for each activity you do in the morning before leaving home: things like `brushTeeth`, `uploadPhotos`, `chooseClothes`, `shower`, `goJogging`, `finishHomework`, or `fixLunch`. Think about how many minutes each activity usually takes, and assign that value to each constant.
 */
let brushTeeth = 3
// Add more here...
let uploadPhotos = 10
let chooseClothes = 5
let shower = 30
let goJogging = 15
let finishHomework = 15
let fixLunch = 25

let totalTasks: Double = Double(brushTeeth + uploadPhotos + chooseClothes + shower + goJogging + finishHomework + fixLunch)

print("Suas tarefas atuais estão levando \(totalTasks / 60) horas")
/*:
 See what happens to your total time spent getting ready if you tweak the durations of the different activities. How short of a shower would you have to take in order to have more time to message your friends? Or go for a longer run? How much more time would you need if you decided to spend as long as you wanted doing all the activities you like best?
 
 Change the numbers until you’ve got a design for your ideal morning. What would have to change in order for you to spend your morning time this way?
 */

/*:
[Previous](@previous)  |  page 13 of 14  |  [Next: Exercise: Good Names](@next)
 */
