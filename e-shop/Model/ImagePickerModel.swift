//
//  ImagePickerModel.swift
//  e-shop
//
//  Created by Las Rock on 4/16/21.
//

import Foundation
import SwiftUI

struct ImagePickerModel:UIViewControllerRepresentable {
    
    typealias UIViewControllerType = UIImagePickerController
    
    typealias Coordinator = ImagePickerCoordinator
    
    var sourceType:UIImagePickerController.SourceType = .camera
    
    @Binding var image:UIImage?
    @Binding var showImagePicker:Bool
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<ImagePickerModel>) -> UIImagePickerController {
        
        let picker = UIImagePickerController()
        picker.sourceType = sourceType
        picker.delegate = context.coordinator
        return picker
        
    }
    
    func makeCoordinator() -> ImagePickerModel.Coordinator {
        return ImagePickerCoordinator(image: $image,showImagePicker: $showImagePicker)
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: UIViewControllerRepresentableContext<ImagePickerModel>) {

    }
}


class ImagePickerCoordinator:NSObject,UINavigationControllerDelegate,UIImagePickerControllerDelegate {
    
    @Binding var image:UIImage?
    @Binding var showImagePicker:Bool
    init(image:Binding<UIImage?>,showImagePicker:Binding<Bool>){
        _image = image
        _showImagePicker = showImagePicker
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let uiImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            image = uiImage
            showImagePicker = false
        }
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        showImagePicker = false
    }
}
