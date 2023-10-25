//
//  Chapter1.swift
//  CLIStoryTemplate
//

import Foundation

func chapterOne() {
    // Your portion of the story goes here
    print("What is the name of the main character in this story?")
    
    let name = readLine()
    
    var ready: Bool = false
    
    while !ready {
        
        if let name = name {
            print("Hello \(name) Are you ready to climb buildings? Type: y / n ")
        }
        
        let readyToStart = readLine()
        
        if let readyToStart = readyToStart {
            switch readyToStart {
            case "y":
                print("Great! Let's begin.")
                ready = true
            case "Y":
                print("Great! Let's begin.")
                ready = true
            case "n":
                print("No Problem, Let me know when you are ready to start!")
            case "N":
                print("No Problem, Let me know when you are ready to start!")
            default:
                print("Please enter Y/y or N/n")
                
            }
        }
        
    }
    
    
    
}
