//
//  File.swift
//  e-shop
//
//  Created by Las Rock on 4/2/21.
//

import Foundation

struct MainSoreModel:Identifiable {

    var id=UUID()
    var title:String
    var price:Int
    var rating:Double
    
}


var mainStoreModel=[
    MainSoreModel(title: "car", price: 300, rating: 3.9),
    MainSoreModel(title: "bag", price: 300, rating: 4.9),
    MainSoreModel(title: "glass", price: 300, rating: 3.9),
   MainSoreModel(title: "jewelery", price: 300, rating: 3.9)
]
