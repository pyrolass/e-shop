//
//  MainPageView.swift
//  e-shop
//
//  Created by Las Rock on 4/4/21.
//

import SwiftUI

struct MainPageView: View {
    @State var isActive : Bool = false
    
    var body: some View {
        NavigationView{
            VStack{
                Text("Welcome To Eshop")
                    .fontWeight(.bold)
                    .font(.largeTitle)
                    .padding()
                    
                    
                NavigationLink(
                    destination: SigninView(rootIsActive: $isActive),
                    isActive:$isActive,
                    label: {
                        HStack {
                            Text("Sign In")
                                
                                .font(.custom("Avenir-Medium", size: 20))
                                .foregroundColor(.black)
                        }
                        .frame(width: 220, height: 30)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(10.0)
                    }
                ).isDetailLink(false)
                NavigationLink(
                    destination: SignupView(rootIsActive: $isActive),
                    isActive:$isActive,
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
