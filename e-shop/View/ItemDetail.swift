//
//  ItemDetail.swift
//  e-shop
//
//  Created by Las Rock on 4/6/21.
//

import SwiftUI

struct ItemDetail: View {
    
    var data = ItemModel(title: "", price: 12, owner: "", color: "", views: 12, brand: "", catagory: "", location: "")
    var namespace:Namespace.ID
    
    var body: some View {
        ScrollView{
            Image(systemName: "leaf")
                .resizable()
                .frame(width:UIScreen.main.bounds.width , height: 150, alignment: .center)
            Divider()
            VStack{
                HStack {
                    Text(data.title)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Spacer()
                    Image(systemName:"heart.fill")
                        .resizable()
                        .frame(width: 25, height: 25, alignment: .center)
                    Text("Favorite")
                        .bold()
                        .font(.system(size: 20))
                }
                Divider()
                
                HStack {
                    Text("$ \(data.price)")
                        .bold()
                    Spacer()
                }
                
                HStack{
                    Image(systemName: "leaf")
                        .resizable()
                        .frame(width: 25, height: 25, alignment: .center)
                    Text("Catagory:\(data.catagory)")
                        .bold()
                    
                    Spacer()
                    Image(systemName: "calendar")
                        .resizable()
                        .frame(width: 25, height: 25, alignment: .center)
                    Text("Date: 2021")
                        .bold()
                        .frame(width: 100, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
                
                HStack{
                    Image(systemName: "leaf")
                        .resizable()
                        .frame(width: 25, height: 25, alignment: .center)
                    Text("Color:\(data.color)")
                        .bold()
                    
                    Spacer()
                    Image(systemName: "calendar")
                        .resizable()
                        .frame(width: 25, height: 25, alignment: .center)
                    Text("Brand: \(data.brand)")
                        .bold()
                        .frame(width: 100, height: 50, alignment: .center)
                }
                
                Divider()
                
                Text("")
                
                Divider()
                
                VStack{
                    HStack{
                        Image(systemName: "location.fill")
                        Text("\(data.location)")
                        Spacer()
                    }
                    Spacer(minLength: 20)
                    HStack{
                        Image(systemName: "eye.fill")
                        Text("\(data.views)")
                        Spacer()
                    }
                    Spacer(minLength: 20)
                    HStack{
                        Image(systemName: "person.fill")
                        Text("\(data.owner)")
                        Spacer()
                    }
                    Divider()
                    Spacer()
                    HStack {
                        Text("Buy Now")
                            .font(.custom("Avenir-Medium", size: 20))
                            .foregroundColor(.black)
                    }
                    .frame(width: 220, height: 30)
                    .padding()
                    .background(Color.green)
                    .cornerRadius(10.0)
                }
                
                
                
                
            }.padding()
            
        }
    }
}

struct ItemDetail_Previews: PreviewProvider {
    @Namespace static  var namespace
    static var previews: some View {
        ItemDetail(namespace:namespace)
    }
}
