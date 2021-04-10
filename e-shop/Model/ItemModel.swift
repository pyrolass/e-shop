//
//  ItemModel.swift
//  e-shop
//
//  Created by Las Rock on 4/6/21.
//

import Foundation
import FirebaseFirestoreSwift

struct ItemModel:Identifiable,Codable{
    
    @DocumentID var id = UUID().uuidString
    var title:String
    var price:Int
    var owner:String
    var color:String
    var views:Int
    var brand:String
    var catagory:String
    var location:String
}

