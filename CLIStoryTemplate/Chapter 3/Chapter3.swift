//
//  Chapter3.swift
//  CLIStoryTemplate
//

import Foundation

let chapterTitle = "Climbing Adventure"
let isClimbing = true

var conflicts = [
    "You have run into a bear! What will you do?",
    "A earthquake has started to rumble! Do you have everything you need?",
    "Your phone has died and you can no longer contact help! What do you do?",
    "A torrential downpour of rain is washing you off the building! How will you hold on?",
    "Your leg fell asleep and you can only use your upper body! What can you do?"
]

var userConflict = conflicts.randomElement()

struct Building {
    let name: String
    let difficulty: String
    let height: Double
    
    func description() {
        print("You have selected the \(name). I hope you trained, it is a whopping height of \(height) feet! It's difficulty is officially set as \(difficulty). Good luck!")
    }
}

let guardian = Building(name: "Guardian Building", difficulty: "Hard", height: 632)
let instituteOfArts = Building(name: "Detroit Institute of Arts", difficulty: "Easy", height: 66)
let fisher = Building(name: "Fisher Building", difficulty: "Meidum", height: 428)


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
        print("You are able to conquer the trail and finish your climb")
    case (.noTraining, .hasEquipment):
        print("You are able to safely retreat")
    case (.noTraining, .noEquipment):
        print("You have completely failed. Your lack of training has caused you to completely fall off the building.")
    case (.training, .noEquipment):
        print("You are able to safely retreat")
    }
}

func climbTest(hasTrained: Bool, hasEquipment: Bool) -> String {
    if hasTrained && hasEquipment {
        return "Congratulations, you were able to acheive your dreams despite the odds. You have overcame "
    } else {
        return "You have failed"
    }
}

/// Contributes to the flow of the other chapter functions within readStory()
func chapterThree() {
    if let name = name {
        if let userConflict = userConflict {
            print("Welcome to chapter 3 the \(chapterTitle) \(name)")
            // Building selector
            print("Select which building to climb: Guardian Building, Detroit Institute of Arts, or the Fisher Building")
            var ready: Bool = false
            
            while !ready {
                let buildingSelect = readLine()
                
                if let userChoice = buildingSelect {
                    switch userChoice {
                    case "Guardian Building":
                        guardian.description()
                        ready = true
                    case "Detroit Institute of Arts":
                        instituteOfArts.description()
                        ready = true
                    case "Fisher Building":
                        fisher.description()
                        ready = true
                    default:
                        print("Error: Please input your selection exactly as it is written")
                        
                    }
                }
                
            }
            // include some filler
            print("You have officially began your climb up the building. Your traning or lack there of will serve you well.")
            
            print("Oh no! \(userConflict)")
            
            // Need to call training level for the result of the userConflict.
            
            //trainingLevel(exp: .noTraining, equipped: .hasEquipment)
            
            
        }
    }
}
