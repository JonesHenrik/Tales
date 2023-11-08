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
            
            for gear in climbingGear {
                print(gear)
            }
            
            print("""
        You realize that investing in high-quality gear is crucial for safety while climbing.
        
        You start shopping for these items, comparing prices, and reading reviews to ensure you get the best equipment.
        
        As the gear arrives, you begin practicing basic climbing techniques and learning about safety procedures. You watch videos, read books, and consider joining a local climbing club to gain experience.
        
        Your climbing experience begins with a grade of \(progress.climbingGrade) and \(progress.climbingExperience) climbing experience. Little by little, you feel more prepared for your new adventure, both physically and mentally.
        
        It's becoming evident that training will be an important part of this journey. Climbers need proper training to excel and stay safe. This chapter marks the beginning of a training arc, and you're excited to see where it will lead.
        
        The training arc begins with a commitment to becoming a skilled climber. It's not just about scaling buildings but mastering the art of climbing. You, \(name), join a local climbing club and meet a diverse group of climbers, each with their own stories and experiences.
        
        You'll share some key moments from the training arc:
        
        1. Meeting Fellow Climbers: You get to know your fellow climbers, and you form a supportive community. You share tips, stories, and encouragement.
        
        2. Facing Challenges: Climbing isn't always smooth sailing. You encounter challenges, both physical and mental. There are moments of frustration and self-doubt, but you push through.
        """)
            
            // Integrate the conflict part with user interaction
            print("3. Unexpected Conflict: During a training session, you face an unexpected conflict. It's a tough situation, and you must make a quick decision.")
                        
                    print("   - Choose an option:")
                    print("     A. Assess the situation and devise a safe plan.")
                    print("     B. Call for help from fellow climbers.")
                    print("     C. Retreat to a safe location.")
                    
                    if let choice = readLine() {
                        switch choice {
                            case "A":
                                print("   - Your quick thinking and assessment lead to a safe resolution. You learn from the experience and continue your training.")
                            case "B":
                                print("   - Fellow climbers come to your aid, and you resolve the conflict together. Teamwork and camaraderie shine during this challenging moment.")
                            case "C":
                                print("   - You make the difficult decision to retreat, prioritizing safety. It's a humbling experience, but you're determined to come back stronger.")
                            default:
                                print("   - Invalid choice. Your indecision leads to a delayed response, but you eventually resolve the conflict and continue your training.")
                        }
                    }
            }
            
            // Continue with the rest of the story
            print("""
                
        4. Learning the Ropes: Literally and figuratively, you become more familiar with climbing techniques and safety procedures. Learning to tie knots, belaying, and using equipment becomes second nature.
        
        5. Climbing Grades: As the training progresses, your climbing grades start to become more defined. You all aim to reach new levels of expertise, and the sense of achievement grows.
        
        6. Safety First: Safety is paramount in climbing. You learn the importance of double-checking gear, practicing safe climbing techniques, and being aware of potential risks.
        
        You've grown both as a climber and as a person. The training arc has been a transformative experience, and you're excited to begin a new journey heading toward your first actual building!
        
        As you reflect on your progress, the moment to face your first building climb approaches. You're now faced with a choice – selecting the building you'll climb. Your options include the towering Guardian Building, the elegant Detroit Institute of Arts, and the challenging Fisher Building.
        
        Which building will you choose for your maiden ascent? Your heart races with anticipation as you contemplate this monumental decision. Your training and preparation have brought you to this point, and now the real adventure begins.
        
        *End of Chapter 2*
        """)
        }
    }

