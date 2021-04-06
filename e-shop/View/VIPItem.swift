//
//  VIPView.swift
//  e-shop
//
//  Created by Las Rock on 4/5/21.
//

import SwiftUI

struct VIPItem: View {
    
    var data = vipData[0]
    
    var body: some View {
        ZStack{
            VStack{
                Image(systemName: data.image)
                    .resizable()
                Divider()
                HStack {
                    Text("Trending")
                        .fontWeight(.bold)
                        .font(.largeTitle)
                        .background(Color.yellow)
                    Spacer()
                    Text(data.title)
                        .fontWeight(.bold)
                        .font(.largeTitle)
                    Spacer()
                }
            }
        }.background(Color("lightGray"))
    }
}

struct VIPView_Previews: PreviewProvider {
    static var previews: some View {
        VIPItem()
    }
}
