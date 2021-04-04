//
//  TestViewModel.swift
//  e-shop
//
//  Created by Las Rock on 3/31/21.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift

class TestViewModel:ObservableObject{
    @Published var data=[Data]()
    
    private var db = Firestore.firestore()
    
    func fetchData(){
        db.collection("DATA").addSnapshotListener { (querySnapshot, error) in
            guard let documents = querySnapshot?.documents else {
                print("no documents")
                return
            }
            
            self.data=documents.compactMap { (queryDocumentSnapshot) -> Data? in
                return try? queryDocumentSnapshot.data(as: Data.self)
//                let data = queryDocumentSnapshot.data()
//
//                let name = data["name"]
//
//                return Data(name: name as! String)
            }
        }
    }
    
    func addData(data:Data){
        do{
            let _ = try db.collection("DATA").addDocument(from: data)
            
        }
        catch{print("error")}
        
    }
}
