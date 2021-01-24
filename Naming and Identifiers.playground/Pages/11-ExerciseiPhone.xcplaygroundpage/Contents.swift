/*:
## Exercise: What Fits on Your iPhone?
 
 In this exercise, you'll figure out the answer to the timeless question: How much stuff can I fit on my iPhone?

 Unlike the previous exercises, no code will be provided. But here are a few things you’ll need to know:
 
 
- iPhone storage capacity is measured in **gigabytes** (GB).
- The iPhone in question has 8GB of storage.
- A gigabyte is about **1000 megabytes** (MB).
- The phone already has **3GB** of stuff on it.
- **One minute** of video takes **150MB** of storage.

 - callout(Exercise): How many minutes of video will it take to fill the phone?\
 _Hint_: Do all of your calculations in megabytes (MB).
 */
let phoneStorageMB = 8 * 1000
let usedStorageMB = 3 * 1000
let minuteVideoStorageMB = 150
let remainingStorageMB = phoneStorageMB - usedStorageMB
let totalMinutesVideo = remainingStorageMB / minuteVideoStorageMB

print("Restam \(totalMinutesVideo) min de gravação em seu iPhone")




/*:
[Previous](@previous)  |  page 12 of 14  |  [Next: Exercise: Fixing Your Morning](@next)
 */
