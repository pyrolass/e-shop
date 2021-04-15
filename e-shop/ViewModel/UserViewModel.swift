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
    @Published var model:UserModel = UserModel(name: "moc", owner: "moc")
    @Published var user = Auth.auth().currentUser?.uid
    
    private var db = Firestore.firestore()
    
    func fetchData(){
        
        db.collection("Usernames").whereField("owner", isEqualTo: user).addSnapshotListener { (query, error) in
            if let e = error{
                print("issue in fire store\(e)")
            }
            else{
                if let snapShotDocument = query?.documents{
                    for doc in snapShotDocument{
                        let data = doc.data()
                        if let name = data["name"] as? String{
                            let newModel = UserModel(name: name, owner: self.user!)
                            self.model = newModel
                            
                        }
                    }
                }
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
