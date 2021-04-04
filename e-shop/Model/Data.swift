//
//  Data.swift
//  e-shop
//
//  Created by Las Rock on 3/31/21.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift

struct Data:Codable,Identifiable {
    
    @DocumentID var id:String?=UUID().uuidString
    var name:String
    
    enum CodingKeys:String,CodingKey {
        case name = "name"
    }
}
