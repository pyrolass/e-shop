//
//  UserModel.swift
//  e-shop
//
//  Created by Las Rock on 4/9/21.
//

import Foundation

struct UserModel:Identifiable,Codable {
    var id:String = UUID().uuidString
    var name:String
    var owner:String
}
