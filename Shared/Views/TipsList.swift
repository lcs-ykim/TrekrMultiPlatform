//
//  TipsList.swift
//  TrekrMultiPlatform
//
//  Created by Yeseo Kim on 2022-01-18.
//

import SwiftUI

struct TipsList: View {
    
    // This view creates its own source of truth
    let tips: [Tip]
    
    var body: some View {
        
        List(tips, id: \.text) { tip in
            
            if tip.children !=nil {
                Label(tip.text, systemImage: "quote.bubble")
            } else {                
                Text(tip.text)
            }
                        
        }
    }
    
    // Initializer pulls tips data from JSON
    // Populates the array
    init() {
        
        // Get a pointer to the file
        let url = Bundle.main.url(forResource: "tips", withExtension: "json")!
        
        // Load the contents of the JSON file
        let data = try! Data(contentsOf: url)
        
        // Convert the data from the JSON file into the array
        tips = try! JSONDecoder().decode([Tip].self, from: data)

    }
}

struct TipsList_Previews: PreviewProvider {
    static var previews: some View {
        TipsList()
    }
}
