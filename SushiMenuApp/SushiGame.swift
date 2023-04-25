//
//  SwiftUIViewSlots.swift
//  SushiMenuApp
//
//  Created by Baris Ciftci on 25/04/2023.
//

import SwiftUI

struct SwiftUIViewSlots: View {
    
    let images: [String] = ["hamachi-sushi","ikura-sushi", "meguro-sushi"]
    
    let GAME_TITLE: String = "Sushi Game!"
    let BUTTON_TEXT: String = "Play"
    let SCORE_TEXT: String = "Score: "
    
    let CORNER_RADIUS_BUTTON: CGFloat = 30
    let CORNER_RADIUS_IMAGE: CGFloat = 20
      
    @State var randomImageFirst: Int = 0
    @State var randomImageSecond: Int = 0
    @State var randomImageThird: Int = 0
    
    @State var score: Int = 100
    
    var body: some View {
        VStack {
            
            gameTitleUI()
            
            Spacer()
            
            gameScoreUI()
            
            Spacer()
            
            gameTiles()
            
            Spacer()
            
            gamePlayButton()
            
            Spacer()
        }
    }
    
    private func gameTitleUI() -> some View {
        return Text(GAME_TITLE)
            .foregroundColor(.pink)
            .font(.largeTitle)
            .fontWeight(.black)
            .padding(.top, 20)
    }
    
    private func gameScoreUI() -> Text {
        return Text("\(SCORE_TEXT) \(score)")
            .fontWeight(.bold)
    }
    
    private func gameTiles() -> some View {
        return HStack {
            getTile(imageIndex: randomImageFirst)
            getTile(imageIndex: randomImageSecond)
            getTile(imageIndex: randomImageThird)
        }
        .padding()
    }
    
    private func getTile(imageIndex: Int) -> some View {
        return Image(images[imageIndex])
            .resizable()
            .aspectRatio(contentMode: .fit)
            .cornerRadius(CORNER_RADIUS_IMAGE)
    }
    
    private func gamePlayButton() -> Button<some View> {
        return Button {
            playButtonAction()
        } label: {
            playButtonUI()
        }
    }
    
    private func playButtonAction() {
        randomImageFirst = Int.random(in: 0...2)
        randomImageSecond = Int.random(in: 0...2)
        randomImageThird = Int.random(in: 0...2)
        
        if (randomImageFirst == 0) && (randomImageSecond == 0) && (randomImageThird == 0){
            score += 10
        } else if (randomImageFirst == 1) && (randomImageSecond == 1) && (randomImageThird == 1){
            score += 10
        } else if (randomImageFirst == 2) && (randomImageSecond == 2) && (randomImageThird == 2) {
            score += 10
        } else {
            score -= 1
        }
    }
    
    private func playButtonUI() -> some View {
        return Text(BUTTON_TEXT)
            .foregroundColor(.white)
            .fontWeight(.black)
            .padding()
            .padding(.horizontal)
            .background(Color.pink)
            .cornerRadius(CORNER_RADIUS_BUTTON)
    }
}

struct SwiftUIViewSlots_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIViewSlots()
    }
}
