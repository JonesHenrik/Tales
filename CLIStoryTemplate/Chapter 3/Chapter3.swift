//
//  Chapter3.swift
//  CLIStoryTemplate
//

import Foundation

let chapterTitle = "Climbing Adventure"
let isClimbing = true

func chapterThree() {
print("Welcome to chapter 3 the \(chapterTitle)")
print("Time for me to begin my journey!")
    
    if isClimbing == true {
        climbing()
    }
    
    print(climbTest(hasTrained: true, hasEquipment: true))
    
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
