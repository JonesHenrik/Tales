//
//  Chapter3.swift
//  CLIStoryTemplate
//

import Foundation

let chapterTitle = "Climbing Adventure"
let isClimbing = true

var conflicts = ["You have run into a bear! What will you do?", "A earthquake has started to rumble! Do you have everything you need?", "Your phone has died and you can no longer contact help! What do you do?", "A torrential downpour of rain is washing you off the building! How will you hold on?", "Your leg fell asleep and you can only use your upper body! What can you do?"]
/// Is called into main folder
func chapterThree() {
print("Welcome to chapter 3 the \(chapterTitle)")
print("Time for me to begin my journey!")
    
    if isClimbing == true {
        climbing()
    }
    
    print(climbTest(hasTrained: true, hasEquipment: true))
    
    print(conflicts.randomElement() ?? "You don't run into any issues on your climb. Congratulations!")

    let guardian = Building(name: "Guardian Building", difficulty: "Hard", height: 632)
    
    print(guardian.difficultySetting())
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

struct Building {
    let name: String
    let difficulty: String
    let height: Double
    
    func difficultySetting() -> String {
        switch height {
        case 0...20:
            "That's not even worth climbing"
        case 21...50:
            "That's a piece of cake"
        case 51...100:
            "Good thing I bought gear"
        case 100...1000:
            "I am gonna die."
        default:
            "That's crazy!"
        }
    }
}
