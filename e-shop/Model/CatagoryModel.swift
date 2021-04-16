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
    CatagoryModel(title: "Clothes"),
    CatagoryModel(title: "Electronics"),
    CatagoryModel(title: "Luxury"),
    CatagoryModel(title: "Jewelery"),
    CatagoryModel(title: "Perfume"),
    CatagoryModel(title: "Cosmetic")
]
