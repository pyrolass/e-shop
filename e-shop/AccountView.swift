//
//  AccountView.swift
//  e-shop
//
//  Created by Las Rock on 3/22/21.
//

import SwiftUI

struct AccountView: View {
    
    @Binding var shouldPopToRootView : Bool
    @ObservedObject var user = UserViewModel()
    
    var body: some View {
        ZStack {
            VStack{
                ForEach(user.data){data in
                    UserView(data: data)
                }
                ScrollView{
                    VStack{
                        HStack{
                            Spacer()
                            VStack {
                                Image(systemName: "creditcard.fill")
                                Text("Pyament")
                            }
                            .frame(width: 200, height: 80, alignment: .center)
                            .background(Color.blue)
                            .clipShape(RoundedRectangle(cornerRadius: 10.0))
                            
                            VStack {
                                Image(systemName: "person.fill")
                                Text("Add Item")
                            }
                            .frame(width: 200, height: 80, alignment: .center)
                            .background(Color.blue)
                            .clipShape(RoundedRectangle(cornerRadius: 10.0))
                            Spacer()
                        }
                        HStack{
                            Spacer()
                            VStack {
                                Image(systemName: "creditcard.fill")
                                Text("Pyament")
                            }.frame(width: 200, height: 80, alignment: .center)
                            .background(Color.blue)
                            .clipShape(RoundedRectangle(cornerRadius: 10.0))
                            
                            
                            VStack {
                                Image(systemName: "person.fill")
                                Text("Pyament")
                            }
                            .frame(width: 200, height: 80, alignment: .center)
                            .background(Color.blue)
                            .clipShape(RoundedRectangle(cornerRadius: 10.0))
                            Spacer()
                        }.padding(.top,5)
                        
                        HStack{
                            VStack(alignment:.leading){
                                
                            }.foregroundColor(.white)
                            Spacer()
                        }.padding()
                    }
                }
                ProceedButton(title: "Sign Out")
                    .onTapGesture {
                        self.shouldPopToRootView = false
                    }
                Spacer(minLength: 50)
            }.padding(50)
        }
        .onAppear(){
            user.fetchData()
        }
        .edgesIgnoringSafeArea(.all)
        .navigationBarHidden(true)
    }
    
    
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView(shouldPopToRootView: .constant(false))
    }
}
