//
//  ContentView.swift
//  SushiMenuApp
//
//  Created by Baris Ciftci on 16/04/2023.
//

import SwiftUI

struct MenuView: View {
    
    var menuItem = [MenuItem(name: "Onigiri", price: "1.99", imageName: "onigiri"),
                                MenuItem(name: "Meguro Sushi", price: "5.99", imageName: "meguro-sushi"),
                                MenuItem(name: "Tako Sushi", price: "4.99", imageName: "tako-sushi"),
                                MenuItem(name: "Avocado Maki", price: "2.99", imageName: "avocado-maki"),
                                MenuItem(name: "Tobiko Spicy Maki", price: "4.99", imageName: "tobiko-spicy-maki"),
                                MenuItem(name: "Salmon Sushi", price: "4.99", imageName: "salmon-sushi"),
                                MenuItem(name: "Hamachi Sushi", price: "6.99", imageName: "hamachi-sushi"),
                                MenuItem(name: "Kani Sushi", price: "3.99", imageName: "kani-sushi"),
                                MenuItem(name: "Tamago Sushi", price: "3.99", imageName: "tamago-sushi"),
                                MenuItem(name: "California Roll", price: "3.99", imageName: "california-roll"),
                                MenuItem(name: "Shrimp Sushi", price: "3.99", imageName: "shrimp-sushi"),
                                MenuItem(name: "Ikura Sushi", price: "5.99", imageName: "ikura-sushi")]
    
    @State var priceColor: Color = .red
    
    var body: some View {
        List(menuItem) { item in
            // Elements in each list
            HStack {
                Image(item.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 50)
                    .cornerRadius(10)
                
                Text(item.name)
                    .fontWeight(.black)
                
                Spacer()
                
                Text("$\(item.price)")
                    .foregroundColor(priceColor)
            }
            .listRowSeparator(.hidden)
            .listRowBackground(Color.brown.opacity(0.1))
        }
        
        //Modifiers to he list view
        .listStyle(.plain)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
