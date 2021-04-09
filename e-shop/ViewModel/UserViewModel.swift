//
//  UserViewModel.swift
//  e-shop
//
//  Created by Las Rock on 4/9/21.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift

class UserViewModel:ObservableObject{
    @Published var data=[UserModel]()
    @Published var user = Auth.auth().currentUser?.uid
    
    private var db = Firestore.firestore()
    
    func fetchData(){
        db.collection("Usernames").whereField("owner", isEqualTo: user!).addSnapshotListener { (querySnapshot, error) in
            guard let documents = querySnapshot?.documents else {
                print("no documents")
                return
            }
            self.data=documents.compactMap { (queryDocumentSnapshot) -> UserModel? in
                let data = queryDocumentSnapshot.data()
                
                let name = data["name"] as! String
                
                let owner = data["owner"] as! String
                
                return UserModel(name: name, owner: owner)
            }
        }
        
    }
    
    func addData(data:UserModel){
        do{
            let _ = try db.collection("Usernames").addDocument(from: data)
            
        }
        catch{print("error")}
        
    }
}
