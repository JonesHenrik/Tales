//
//  Chapter3.swift
//  CLIStoryTemplate
//

import Foundation

let chapterTitle = "Climbing Adventure"
let isClimbing = true


    
    var conflicts = ["You have run into a bear! What will you do?", "A earthquake has started to rumble! Do you have everything you need?", "Your phone has died and you can no longer contact help! What do you do?", "A torrential downpour of rain is washing you off the building! How will you hold on?", "Your leg fell asleep and you can only use your upper body! What can you do?"]
  
    var userConflict = conflicts.randomElement()

/// Contributes to the flow of the other chapter functions within readStory()
    func chapterThree() {
        if let name = name {
            if let userConflict = userConflict {
                print("Welcome to chapter 3 the \(chapterTitle) \(name)")
                
                print("You have officially began your climb up the building.")
                print("You continue to ascend and as you near the halfway point \(userConflict).")
                trainingLevel(exp: .noTraining, equipped: .hasEquipment)
                
            }
        }
    }

// Case use will be determined by user/reader
enum Experience {
    case training, noTraining
}

// Case use will be determined by user/reader
enum Equipment {
    case hasEquipment, noEquipment
}

// Responsible for the print outputs based on user/reader choices in Ch 2.
func trainingLevel(exp: Experience, equipped: Equipment) {
    switch (exp, equipped) {
    case (.training, .hasEquipment):
        print("")
    case (.noTraining, .hasEquipment):
        print("hjkjk")
    case (.noTraining, .noEquipment):
        print("")
    case (.training, .noEquipment):
        print("")
    }
}

func climbTest(hasTrained: Bool, hasEquipment: Bool) -> String {
    if hasTrained && hasEquipment {
        return "Congratulations, you were able to acheive your dreams despite the odds. You have overcame "
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

//if isClimbing == true {
    //climbing()
//}

//print(climbTest(hasTrained: true, hasEquipment: true))

//print(conflicts.randomElement() ?? "You don't run into any issues on your climb. Congratulations!")

let guardian = Building(name: "Guardian Building", difficulty: "Hard", height: 632)

//print(guardian.difficultySetting())
