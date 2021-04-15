//
//  SignupView.swift
//  e-shop
//
//  Created by Las Rock on 4/4/21.
//

import SwiftUI
import Firebase

struct UsernameView: View {
    @State var username:String = ""
    @State var isSignedin:Bool = false
    @Binding var rootIsActive:Bool
    var viewModel = UserViewModel()
    
    var body: some View {
            VStack{
                Text("Please add username ")
                    .fontWeight(.bold)
                    .font(.largeTitle)
                TextField("Username", text: $username)
                    .padding()
                    .background(Color("lightGray"))
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                
                
                NavigationLink(
                    destination: ContentView(rootIsActive:$rootIsActive),
                    isActive: .constant(isSignedin),
                    label: {
                        ProceedButton(title: "Continue")
                        .onTapGesture {
                            var username = UserModel(name: self.username, owner: Auth.auth().currentUser!.uid)
                            if username != nil{
                                viewModel.addData(data: username)
                                isSignedin.toggle()
                            }
                            
                            
                            
                        }
                    })
            }
            .padding()
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct UsernameView_Previews: PreviewProvider {
    static var previews: some View {
        UsernameView(rootIsActive: .constant(false))
    }
}
