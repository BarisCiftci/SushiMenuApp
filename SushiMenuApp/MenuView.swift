//
//  ContentView.swift
//  SushiMenuApp
//
//  Created by Baris Ciftci on 16/04/2023.
//

import SwiftUI

struct MenuView: View {
    
    @State var menuItem = [MenuItem]()
    
    var dataService = DataService()
    
    
    
    var body: some View {
        List(menuItem) { item in
            // Elements in each list
           MenuListRow(item: item)
        }
        
        .onAppear{
            menuItem = dataService.getData()
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
