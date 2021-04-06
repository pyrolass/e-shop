//
//  ItemViewModel.swift
//  e-shop
//
//  Created by Las Rock on 4/6/21.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift

class ItemViewModel:ObservableObject{
    @Published var data=[ItemModel]()
    
    private var db = Firestore.firestore()
    
    func fetchData(){
        db.collection("Items").addSnapshotListener { (querySnapshot, error) in
            guard let documents = querySnapshot?.documents else {
                print("no documents")
                return
            }
            
            self.data=documents.compactMap { (queryDocumentSnapshot) -> ItemModel? in
                return try? queryDocumentSnapshot.data(as: ItemModel.self)
//                let data = queryDocumentSnapshot.data()
//
//                let name = data["name"]
//
//                return Data(name: name as! String)
            }
        }
    }
    
    func addData(data:ItemModel){
        do{
            let _ = try db.collection("Items").addDocument(from: data)
            
        }
        catch{print("error")}
        
    }
}
