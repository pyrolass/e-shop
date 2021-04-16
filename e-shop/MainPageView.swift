//
//  MainPageView.swift
//  e-shop
//
//  Created by Las Rock on 4/4/21.
//

import SwiftUI

struct MainPageView: View {
    @State var signInIsActive : Bool = false
    @State var signUpIsActive : Bool = false
    
    var body: some View {
        NavigationView{
            VStack{
                Text("Welcome To Eshop")
                    .fontWeight(.bold)
                    .font(.largeTitle)
                    .padding()
                
                
                NavigationLink(
                    destination: SigninView(rootIsActive: $signInIsActive),
                    isActive:$signInIsActive,
                    label: {
                        ProceedButton(title: "Sign In")
                    }
                ).isDetailLink(false)
                
                Spacer()
                    .frame(height:20)
                
                NavigationLink(
                    destination: SignupView(rootIsActive: $signUpIsActive),
                    isActive:$signUpIsActive,
                    label: {
                        ProceedButton(title: "Sign Up")
                    }).isDetailLink(false)
            }
        }
    }
}

struct MainPageView_Previews: PreviewProvider {
    static var previews: some View {
        MainPageView()
    }
}
