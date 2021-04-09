//
//  ItemDetail.swift
//  e-shop
//
//  Created by Las Rock on 4/6/21.
//

import SwiftUI

struct ItemDetail: View {
    
    var data = ItemModel(title: "test", price: 12, owner: "test")
    
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
                    Text("Catagory:cars")
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
                    Text("Color:blue")
                        .bold()
                    
                    Spacer()
                    Image(systemName: "calendar")
                        .resizable()
                        .frame(width: 25, height: 25, alignment: .center)
                    Text("Brand: Nike")
                        .bold()
                        .frame(width: 100, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
                
                Divider()
                
                Text("")
                
                Divider()
                
                VStack{
                    HStack{
                        Image(systemName: "location.fill")
                        Text("Erbil")
                        Spacer()
                    }
                    Spacer(minLength: 20)
                    HStack{
                        Image(systemName: "eye.fill")
                        Text("2")
                        Spacer()
                    }
                    Spacer(minLength: 20)
                    HStack{
                        Image(systemName: "person.fill")
                        Text("Las")
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
    static var previews: some View {
        ItemDetail()
    }
}
