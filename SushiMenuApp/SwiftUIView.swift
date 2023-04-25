//
//  SwiftUIView.swift
//  SushiMenuApp
//
//  Created by Baris Ciftci on 24/04/2023.
//

import SwiftUI

struct SwiftUIView: View {
    
    @State var value = 0
    
    var body: some View {
        HStack {
            
            Button {
                value -= 1
                
            } label: {
                Image(systemName: "minus.circle.fill")
                
            }
            Spacer()
            Text("\(value)")
                .font(.system(size: 220))
                .fontWeight(.black)
                .foregroundColor(.pink)
            
            Spacer()
            Button {
                value += 1
                if value == 5 {
                    print("value is 5")
                }
            } label: {
                Image(systemName: "plus.circle.fill")
                    .font(.largeTitle)
                
            }
            
            
        }
        .padding()
        

    }
    
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
