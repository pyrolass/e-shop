//
//  VIPModel.swift
//  e-shop
//
//  Created by Las Rock on 4/5/21.
//

import Foundation
import FirebaseFirestoreSwift

struct VIPModel:Codable,Identifiable {
    @DocumentID var id = UUID().uuidString
    var image:String
    var title:String
}

var vipData = [
    VIPModel(image: "leaf.fill", title: "leaf"),
    VIPModel(image: "leaf.fill", title: "leaf2"),
    VIPModel(image: "leaf.fill", title: "leaf3"),
    VIPModel(image: "leaf.fill", title: "leaf4")

]
