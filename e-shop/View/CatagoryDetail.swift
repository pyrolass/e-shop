//
//  CatagoryView.swift
//  e-shop
//
//  Created by Las Rock on 4/11/21.
//

import SwiftUI

struct CatagoryDetail: View {
    var data = catagories[0]
    var body: some View {
        HStack {
            Text(data.title)
                .bold()
                .font(.title)
                .foregroundColor(Color("mintCream"))
        }
        .padding()
        .background(Color.pink)
        .clipShape(Capsule())
        
    }
}

struct CatagoryDetail_Previews: PreviewProvider {
    static var previews: some View {
        CatagoryView()
    }
}
