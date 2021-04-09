//
//  ProceedButton.swift
//  e-shop
//
//  Created by Las Rock on 4/9/21.
//

import SwiftUI

struct ProceedButton: View {
    var title:String
    var body: some View {
        HStack {
            Text("\(title)")
                .font(.custom("Avenir-Medium", size: 20))
                .foregroundColor(.black)
        }
        .frame(width: 220, height: 30)
        .padding()
        .background(Color.green)
        .cornerRadius(10.0)
    }
}

struct ProceedButton_Previews: PreviewProvider {
    static var previews: some View {
        ProceedButton(title: "close")
    }
}
