//
//  ContentView.swift
//  SushiMenuApp
//
//  Created by Baris Ciftci on 16/04/2023.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
