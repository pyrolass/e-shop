//
//  CatagoryModel.swift
//  e-shop
//
//  Created by Las Rock on 4/11/21.
//

import Foundation

struct CatagoryModel:Identifiable,Codable{
    var id = UUID().uuidString
    var title:String
}

var catagories = [
    CatagoryModel(title: "clothes"),
    CatagoryModel(title: "electronics"),
    CatagoryModel(title: "luxury"),
    CatagoryModel(title: "jewelery"),
    CatagoryModel(title: "perfume"),
    CatagoryModel(title: "cosmetic")
]
