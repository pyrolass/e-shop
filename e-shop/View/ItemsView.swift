//
//  ItemsView.swift
//  e-shop
//
//  Created by Las Rock on 4/2/21.
//

import SwiftUI

struct ItemsView: View {
    var data = mainStoreModel[0]
    var body: some View {
        ZStack{
            VStack{
                Image(systemName: "leaf")
                    .resizable()
                    .frame(width: .infinity, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(Color.red)
                
                HStack{
                    Spacer()
                    Image(systemName: "leaf")
                        .resizable()
                        .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Spacer()
                    VStack{
                        Text(data.title)
                            .fontWeight(.bold)
                        HStack{
                            Text("Min:\(data.price)")
                            Text("|")
                            Text("1:00PM - 8:40PM")
                            
                            
                        }
                    }
                    Spacer()
                }
            }
        }.background(Color.blue)
        .clipShape(RoundedRectangle(cornerRadius: 20.0))
    }
}

struct ItemsView_Previews: PreviewProvider {
    static var previews: some View {
        ItemsView()
    }
}
