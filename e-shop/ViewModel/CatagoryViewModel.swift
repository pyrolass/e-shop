//
//  UserViewModel.swift
//  e-shop
//
//  Created by Las Rock on 4/9/21.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift

class CatagoryViewModel:ObservableObject{
    @Published var data=[ItemModel]()
    var catagory:String
    
    init(cata:String) {
        catagory = cata
    }
    private var db = Firestore.firestore()
    
    func fetchData(){
        db.collection("Items").whereField("catagory", isEqualTo:catagory ).addSnapshotListener { (querySnapshot, error) in
            guard let documents = querySnapshot?.documents else {
                print("no documents")
                return
            }
            self.data=documents.compactMap { (queryDocumentSnapshot) -> ItemModel? in
                return try? queryDocumentSnapshot.data(as: ItemModel.self)
            }
        }
        
    }
    
    func addData(data:UserModel){
        do{
            let _ = try db.collection("Items").addDocument(from: data)
            
        }
        catch{print("error")}
        
    }
}
