//
//  Chapter1.swift
//  CLIStoryTemplate
//


import Foundation

struct Chacracter {
    var name: String
    var age: Int
    var catchphrase: String

}

enum building {
    case house, highrise, skyscraper
}

var catchphrases: [String] = ["example", "example2", "example3"]


let name = readLine()


func chapterOne() {
    // Your portion of the story goes here
    print("What is the name of the main character in this story?")
    

    var ready: Bool = false
    
    while !ready {
        
        if let name = name {
            print("Hello \(name) Are you ready to climb buildings? Please Enter: Y/y or N/n ")
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
    if let name = name {
        print("""
Once upon a time there was our main character named \(name).
Everyday \(name) wakes up and ponders about what to spend their day doing.
\(name) goes to work every weekday and leaves work around 4, but \(name) has nothing to do for the rest of the day and ends up staying inside all night long.
After years of evenings filled with dread and boredom \(name) decides its time for things to change.
"It's time to look for a hobby" says \(name).
*End of Chapter 1*
""")
    }
    
    var readyToChange: Bool = false
    

    while !readyToChange {
        
        print("Are you ready to move on to Chapter 2? Please enter: Y/y or N/n ")
        
        let readyToChangeChapter = readLine()
        
        if let readyToChangeChapter = readyToChangeChapter {
            switch readyToChangeChapter {
            case "Y":
                print("Great! Let's move on")
                readyToChange = true
            case "y":
                print("Great! Let's move on")
                readyToChange = true
            case "N":
                print("No problem, Take your time")
            case "n":
                print("No problem, Take your time")
            default:
                print("Please enter: Y/y or N/n")
            }
        }
    }
}
