//
//  ShopItem.swift
//  e-shop
//
//  Created by Las Rock on 4/6/21.
//

import SwiftUI

struct ShopItem: View {
    
    var data = ItemModel(title: "", price: 12, owner: "", color: "", views: 1, brand: "", catagory: "", location: "")
    
    var body: some View {
        ZStack{
            VStack{
                Image(systemName: "leaf")
                    .resizable()
                    .frame(height: 150, alignment: .center)
                    .background(Color.red)
                
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
        }.background(Color("lightGray"))
        .clipShape(RoundedRectangle(cornerRadius: 20.0))
    }
}

struct ShopItem_Previews: PreviewProvider {
    static var previews: some View {
        ShopItem()
    }
}
