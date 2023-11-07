//
//  Chapter3.swift
//  CLIStoryTemplate
//

import Foundation

let chapterTitle = "Climbing Adventure"
let isClimbing = true

var descriptions = [
    "The troll emerged from the shadows, a monstrous figure with matted, slimy hair and claws that glistened like obsidian. It growled low and threatening, a sound that echoed throughtout the building rumbled to its core, filling the air with dread.",
    "Its skin as rough as tree bark and its eyes glowing with malevolence. Its guttural growl sent a chill down your spine, a menacing promise of danger.",
    "You come face to face with a towering, warty creature. The troll's growl was a dissonant cacophony, like a rockslide crashing through a cave, warning all who approached to turn back.",
    "A massive, stony troll with jagged, obsidian-like skin now blocks your path. Its growl, a nightmarish cacophony, reverberated through the city, a chilling warning of the peril that lay ahead.",
    "The troll, a towering behemoth with bulging, yellow eyes and tusks that could decimate an entire city, lumbered into view. Its growl, like the rumble of a distant thunderstorm, rumbled from deep within its chest, making your heart race with fear."
]

var trollDescription = descriptions.randomElement()

enum Difficulty {
    case easy, medium, hard
}

func difficultyRating(difficulty: Difficulty) -> String {
    switch difficulty {
    case .easy:
        return "Easy"
    case .medium:
        return  "Medium"
    case .hard:
        return  "Hard"
    }
}

struct Building {
    let name: String
    let difficulty: Difficulty
    let height: Double
    
    func description() {
        print("You have selected the \(name). I hope you trained, it is a whopping height of \(height) feet! It's difficulty is officially set as \(difficulty). Good luck!")
    }
}

let guardian = Building(name: "Guardian Building", difficulty: .hard, height: 632)
let instituteOfArts = Building(name: "Detroit Institute of Arts", difficulty: .easy, height: 66)
let fisher = Building(name: "Fisher Building", difficulty: .medium, height: 428)

let riddleHints = [
    "I'm something you interact with daily.",
    "You find me on your desk or in your bag.",
    "I help you communicate and input information.",
    "I'm a common tool in the digital age.",
    "I'm used for writing but not with paper and ink."
]


/// Contributes to the flow of the other chapter functions within readStory()
func chapterThree() {
    if let name = name {
        if let trollDescription = trollDescription {
            
            print("\nWelcome to chapter 3 the \(chapterTitle) \(name)")
            // Building selector
            print("\nSelect a building to begin your journey:\nGuardian Building, Detroit Institute of Arts, or the Fisher Building")
            
            var ready: Bool = false
            while !ready {
                let buildingSelect = readLine()
                
                if let userChoice = buildingSelect {
                    switch userChoice.lowercased().replacingOccurrences(of: " ", with: "") {
                    case "guardianbuilding":
                        guardian.description()
                        ready = true
                    case "detroitinstituteofarts":
                        instituteOfArts.description()
                        ready = true
                    case "fisherbuilding":
                        fisher.description()
                        ready = true
                    default:
                        print("Error: Please make sure you don't have typos")
                        
                    }
                }
                
            }
            // include some filler
            print("You have begun your climb up the building. Your traning or lack there of will serve you well.")
            
            print("\nOh no! Your journey comes to an immediate halt by a troll! \(trollDescription) The troll demands that you leave his territory or be met with his violence. However, the troll doesn't get many visitors and has been quite lonely. He grants you passage as long as you can answer his riddle.")
            
            //Riddle posed
            print("\nThe troll asks in his ragged grumbly voice: \n  \nI have keys but open no locks, I have space but no room, and you can enter, but you can't go inside.\nWhat am I?")
            
            //riddle asked
            var riddle: Bool = false
            while !riddle {
                var riddleAsked = readLine()
                
                if let userAnswer = riddleAsked {
                    switch userAnswer.lowercased().replacingOccurrences(of: " ", with: "") {
                    case "keyboard", "akeyboard":
                        print("That is correct! Congratulations \(name)! You may pass!")
                        riddle = true
                    case "hint", "anotherhint", "another":
                        print("\(riddleHints.randomElement() ?? "There are no hints for you \(name)")")
                    default:
                        print("That is incorrect! I expected more from you \(name). You shall NOT pass!\nIf you need hints type in 'hint'. If you are still stumped you may ask for another\nBut I heard all the cool kids don't need hints.")
                    }
                }
            }
            print("*End of Chapter 3*")
        }
    }
}
