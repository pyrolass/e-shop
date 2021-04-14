//
//  SigninView.swift
//  e-shop
//
//  Created by Las Rock on 4/4/21.
//

import SwiftUI
import Firebase
struct SigninView: View {
    @State var username:String = ""
    @State var password:String = ""
    @Binding var rootIsActive:Bool
    @State var isSignedin=false
    
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
                    .foregroundColor(.black)
                
                
                SecureField("Password", text: $password)
                    .padding()
                    .background(Color("lightGray"))
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                    .foregroundColor(.black)
                
                NavigationLink(
                    destination: ContentView(rootIsActive:$rootIsActive),
                    isActive: .constant(isSignedin),
                    label: {
                        ProceedButton(title: "Sign in")
                        .onTapGesture {
                            Auth.auth().signIn(withEmail: username, password: password) { (res, error) in
                                if (error != nil){
                                    print(error)
                                    return
                                }
                                else{isSignedin.toggle()}
                                
                            }
                            
                        }
                    })
            }
            .padding()
            .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct SigninView_Previews: PreviewProvider {
    static var previews: some View {
        SigninView(rootIsActive: .constant(false))
    }
}
