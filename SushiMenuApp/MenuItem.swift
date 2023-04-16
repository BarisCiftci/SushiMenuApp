//
//  MenuItem.swift
//  SushiMenuApp
//
//  Created by Baris Ciftci on 16/04/2023.
//

import Foundation

struct MenuItem: Identifiable {
    
    var id: UUID = UUID()
    var name: String
    var price: String
    var imageName: String
}

