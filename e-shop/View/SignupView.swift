//
//  SignupView.swift
//  e-shop
//
//  Created by Las Rock on 4/4/21.
//

import SwiftUI

struct SignupView: View {
    @State var username:String = ""
    @State var password:String = ""
    @State var isSignedIn:Bool = false
    @Binding var rootIsActive:Bool
    
    var body: some View {
            VStack{
                Text("EShop")
                    .fontWeight(.bold)
                    .font(.largeTitle)
                TextField("Username", text: $username)
                    .padding()
                    .background(Color("lightGray"))
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                
                SecureField("Password", text: $password)
                    .padding()
                    .background(Color("lightGray"))
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                
                NavigationLink(
                    destination: ContentView(rootIsActive:$rootIsActive),
                    isActive: $isSignedIn,
                    label: {
                        HStack {
                            Text("Sign Up")
                                .font(.custom("Avenir-Medium", size: 20))
                                .foregroundColor(.black)
                        }
                        .frame(width: 220, height: 30)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(10.0)
                        .onTapGesture {
                            isSignedIn.toggle()
                        }
                    })
            }
            .padding()
            .navigationBarTitleDisplayMode(.inline)
    }
}
