//
//  MenuListRow.swift
//  SushiMenuApp
//
//  Created by Baris Ciftci on 20/04/2023.
//

import SwiftUI

struct MenuListRow: View {
    
    var item: MenuItem
    
    var body: some View {
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
        }
        .listRowSeparator(.hidden)
        .listRowBackground(Color.brown.opacity(0.1))
    }
}

struct MenuListRow_Previews: PreviewProvider {
    static var previews: some View {
        MenuListRow(item: MenuItem(name: "Test Name", price: "price", imageName: "salmon-sushi"))
    }
}
