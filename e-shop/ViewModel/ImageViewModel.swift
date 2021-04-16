//
//  ImageViewModel.swift
//  e-shop
//
//  Created by Las Rock on 4/16/21.
//

import Foundation
import SwiftUI
import Firebase
class ImageViewModel:ObservableObject{
    
    @Published var image:UIImage?
    @Published var imageLocation:String?
    
    func getImage(){
        Storage.storage().reference().child(imageLocation!).getData(maxSize: 1*1024*1024*1024) { [self] (data, error) in
            if error != nil {
                print(error)
            }
            else{
                if let imageData = data{
                    self.image =  UIImage(data: imageData)
                }
                
            }
        }
    }
    
    func uploadImage(image:UIImage){
        
        if let imageData = image.jpegData(compressionQuality: 1){
            let storage = Storage.storage()
            storage.reference().child(imageLocation!).putData(imageData, metadata: nil) { (data, error) in
                if (error != nil){
                    print(error?.localizedDescription)
                }
                else{
                    print("image uploaded")
                }
                
            }
        }
    }
    
    
}
