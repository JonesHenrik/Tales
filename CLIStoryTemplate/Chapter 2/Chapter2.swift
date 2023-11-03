//
//  Chapter2.swift
//  CLIStoryTemplate
//


import Foundation


// Define an enum for climbing grades
enum ClimbingGrade {
    case beginner
    case intermediate
    case advanced
    case expert
}

// Define a struct to track climber's progress
struct ClimberProgress {
    var climbingGrade: ClimbingGrade
    var climbingExperience: String
}

func chapterTwo() {
    
    var progress = ClimberProgress(climbingGrade: .beginner, climbingExperience: "none")
    
    // a simplified array of climbing gear
    let climbingGear = [
        "Climbing Rope",
        "Harness",
        "Carabiners",
        "Climbing Shoes",
        "Chalk Bag",
        "Helmet",
        "Quickdraws",
        "Belay Device",
        "Crash Pad",
        "Gloves"
    ]
    if let name = name {
        if !name.isEmpty {
            print("""
        Chapter 2: Preparing for a New Adventure
        
        After deciding it's time for a change, I, \(name), begin researching my new hobby - climbing buildings. Excitement builds as I think about the thrill of scaling skyscrapers and exploring new heights.
        
        To embark on this adventure, I start by gathering the necessary climbing gear. Here's a list of materials I'll need:
        
        """)
            
//            for gear in climbingGear {
//                print(gear)
//                
//                
//                // Define an array of climbing materials and their prices
//                let climbingMaterials = [
//                    ("Climbing Rope", 150),
//                    ("Harness", 80),
//                    ("Carabiners", 20),
//                    ("Climbing Shoes", 120),
//                    ("Chalk Bag", 15),
//                    ("Helmet", 50),
//                    ("Quickdraws", 10),
//                    ("Belay Device", 30),
//                    ("Crash Pad", 200),
//                    ("Gloves", 25)
//                ]
//                
//                // Calculate the total cost
//                var totalCost = 0
//                for (_, price) in climbingMaterials {
//                    totalCost += price
//                    
//                }
                
                print("""
        I realize that investing in high-quality gear is crucial for safety while climbing.
        
        I start shopping for these items, comparing prices, and reading reviews to ensure I get the best equipment.
        
        As the gear arrives, I begin practicing basic climbing techniques and learning about safety procedures. I watch videos, read books, and consider joining a local climbing club to gain experience.
        
        My climbing experience begins with a grade of \(progress.climbingGrade) and \(progress.climbingExperience) climbing experience. Little by little, I feel more prepared for my new adventure, both physically and mentally.
        
        It's becoming evident that training will be an important part of this journey. Climbers need proper training to excel and stay safe. This chapter marks the beginning of a training arc, and I'm excited to see where it will lead.
        
        The training arc begins with a commitment to becoming a skilled climber. It's not just about scaling buildings but mastering the art of climbing. I, \(name), join a local climbing club and meet a diverse group of climbers, each with their own stories and experiences.
        
                I'll share some key moments from the training arc:
        
                1. Meeting Fellow Climbers: I get to know my fellow climbers, and we form a supportive community. We share tips, stories, and encouragement.
        
                2. Facing Challenges: Climbing isn't always smooth sailing. I encounter challenges, both physical and mental. There are moments of frustration and self-doubt, but I push through.
        
                3. Learning the Ropes: Literally and figuratively, I become more familiar with climbing techniques and safety procedures. Learning to tie knots, belaying, and using equipment becomes second nature.
        
                4. Climbing Grades: As the training progresses, our climbing grades start to become more defined. We all aim to reach new levels of expertise, and the sense of achievement grows.
        
                5. Safety First: Safety is paramount in climbing. I learn the importance of double-checking gear, practicing safe climbing techniques, and being aware of potential risks.
        
                By the end of this chapter, I've grown both as a climber and as a person. The training arc has been a transformative experience, and I'm excited to share the outcomes in the next chapter.
        *End of Chapter 2*
        """)
                
                // Update the climber's progress
                progress.climbingGrade = .advanced
                progress.climbingExperience = "Familiar"
            }
        }
    }

