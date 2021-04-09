//
//  SignupView.swift
//  e-shop
//
//  Created by Las Rock on 4/4/21.
//

import SwiftUI
import Firebase

struct SignupView: View {
    @State var username:String = ""
    @State var password:String = ""
    @State var isSignedin:Bool = false
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
                    isActive: .constant(isSignedin),
                    label: {
                        ProceedButton(title: "Sign Up")
                        .onTapGesture {
                            Auth.auth().createUser(withEmail: username, password: password) { authResult, error in
                                if (error != nil){
                                    print(error)
                                }
                                else{
                                    isSignedin.toggle()
                                }
                            }
                            
                        }
                    })
            }
            .padding()
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView(rootIsActive: .constant(false))
    }
}
