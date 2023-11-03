//
//  Chapter2.swift
//  CLIStoryTemplate
//

import Foundation

func chapterTwo() {
    
        // Define an array of climbing materials and their prices
        let climbingMaterials = [
            ("Climbing Rope", 150),
            ("Harness", 80),
            ("Carabiners", 20),
            ("Climbing Shoes", 120),
            ("Chalk Bag", 15),
            ("Helmet", 50),
            ("Quickdraws", 10),
            ("Belay Device", 30),
            ("Crash Pad", 200),
            ("Gloves", 25)
        ]
        
        // Calculate the total cost
        var totalCost = 0
        for (_, price) in climbingMaterials {
            totalCost += price
        }
        
        if let name = name {
            if !name.isEmpty {
            
                print("""
            Chapter 2: Preparing for a New Adventure
            
            After deciding it's time for a change, \(name) begins researching their new hobby - climbing buildings. Excitement builds as they think about the thrill of scaling skyscrapers and exploring new heights.
            
            To embark on this adventure, \(name) starts by gathering the necessary climbing gear. Here's a list of materials and their prices:
            
            """)
                
                for (material, price) in climbingMaterials {
                    print("\(material) - $\(price)")
                }
                
                print("""
            
            The total cost of all these materials is $\(totalCost). \(name) realizes that investing in high-quality gear is crucial for safety while climbing.
            
            They start shopping for these items, comparing prices, and reading reviews to ensure they get the best equipment.
            
            As the gear arrives, \(name) begins practicing basic climbing techniques and learning about safety procedures. They watch videos, read books, and consider joining a local climbing club to gain experience.
            
            Little by little, \(name) feels more prepared for their new adventure, both physically and mentally.
            
            *End of Chapter 2*
            """)
            }
        }
}
