//
//  UserView.swift
//  e-shop
//
//  Created by Las Rock on 4/9/21.
//

import SwiftUI

struct UserView: View {
    var data = UserModel(name: "las", owner: "las")
    var body: some View {
        
        HStack{
            Image(systemName: "person.crop.circle")
                .resizable()
                .frame(width: 40, height: 40, alignment: .center)
            Text("Hello \(data.name.capitalized)!")
            Spacer()
            
        }.padding()
        .background(Color.red)
        .clipShape(RoundedRectangle(cornerRadius: 25.0))
        .foregroundColor(.white)
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
