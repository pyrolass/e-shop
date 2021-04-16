//
//  ShopItem.swift
//  e-shop
//
//  Created by Las Rock on 4/6/21.
//

import SwiftUI

struct ShopItem: View {
    
    @ObservedObject var imageViewModel = ImageViewModel()
    
    var data = ItemModel(title: "", price: 12, owner: "", color: "", date: "2021", views: 1, brand: "", catagory: "", location: "")
    init(data:ItemModel) {
        self.data = data
        imageViewModel.imageLocation = data.title
        imageViewModel.getImage()
    }
    var body: some View {
        ZStack{
            VStack{
                if let img = imageViewModel.image{
                    Image(uiImage: imageViewModel.image!)
                            .resizable()
                            .frame(height: 150, alignment: .center)
                            .background(Color.red)
                }
                
                
                HStack{
                    Image(systemName: "leaf")
                        .resizable()
                        .frame(width: 50, height: 50, alignment: .center)
                    Spacer()
                    VStack{
                        Text(data.title)
                            .fontWeight(.bold)
                        HStack{
                            Text("price: \(data.price)")
                            
                        }
                    }
                    Spacer()
                }.padding()
            }
            .foregroundColor(.black)
        }
        .background(Color("lightGray"))
        .clipShape(RoundedRectangle(cornerRadius: 20.0))
        
        
    }
    
}


