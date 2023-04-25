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
    
    let SCORE_POINT_WIN: Int = 5
    let SCORE_POINT_LOSE: Int = 1
      
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
    
    private func getRandomImageIndex() -> Int {
        let maxIndexRange: Int = images.count - 1
        return Int.random(in: 0...maxIndexRange)
    }
    
    private func playButtonAction() {
        randomImageFirst = getRandomImageIndex()
        randomImageSecond = getRandomImageIndex()
        randomImageThird = getRandomImageIndex()
        
        if (randomImageFirst == randomImageSecond) && (randomImageSecond == randomImageThird){
            score += SCORE_POINT_WIN
        } else {
            score -= SCORE_POINT_LOSE
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
