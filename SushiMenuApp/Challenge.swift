//
//  Challenge.swift
//  SushiMenuApp
//
//  Created by Baris Ciftci on 16/04/2023.
//

import SwiftUI

struct Challenge: View {
    // Declare the array of 5 words
    let words = ["Natalia", "Zozo", "Baris", "Natalia", "Ebru", "Zozan"]
    
    @State private var wordList: [String] = [" "]
    
    var body: some View {
        VStack(spacing: 20) {
            Text("\(words.count)")
            ForEach(wordList, id: \.self) { word in
                Text(word)
                    .font(.largeTitle)
            }
            Button {
                // Choose a random word from the array
                let randomIndex = Int.random(in: 0..<words.count)
                
                // Add the random word to the list
                wordList = [words[randomIndex]]
            } label: {
                Image(systemName: "heart.fill")
                    .font(.largeTitle)
                    .foregroundColor(.red)
            }
            
            Button {
                wordList = ["  "]
            } label: {
                Image(systemName: "circle")
            }


        }
    }
}

struct Challenge_Previews: PreviewProvider {
    static var previews: some View {
        Challenge()
    }
}
