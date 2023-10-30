//
//  Chapter3.swift
//  CLIStoryTemplate
//

import Foundation

let chapterTitle = "Climbing Adventure"
let isClimbing = true

var conflicts = ["You have run into a bear! What will you do?", "A earthquake has started to rumble! Do you have everything you need?", "Your phone has died and you can no longer contact help! What do you do?", "A torrential downpour of rain is washing you off the building! How will you hold on?", "Your leg fell asleep and you can only use your upper body! What can you do?"]

func chapterThree() {
print("Welcome to chapter 3 the \(chapterTitle)")
print("Time for me to begin my journey!")
    
    if isClimbing == true {
        climbing()
    }
    
    print(climbTest(hasTrained: true, hasEquipment: true))
    
    print(conflicts.randomElement() ?? "You don't run into any issues on your climb. Congratulations!")

        
}

func climbing() {
    print("WOOT WOOT, I can't belive I am climbing right now!")
}

func climbTest(hasTrained: Bool, hasEquipment: Bool) -> String {
    if hasTrained && hasEquipment {
        return "Congratulations you passed!"
    } else {
        return "You have failed"
    }
}
