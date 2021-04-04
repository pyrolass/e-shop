//
//  AccountView.swift
//  e-shop
//
//  Created by Las Rock on 3/22/21.
//

import SwiftUI

struct AccountView: View {
    
    @Binding var shouldPopToRootView : Bool
    
    var body: some View {
        ZStack {
            VStack{
                HStack{
                    Image(systemName: "person.crop.circle")
                        .resizable()
                        .frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Text("Hello Las!")
                    Spacer()
                    
                }.padding()
                .background(Color.red)
                .clipShape(RoundedRectangle(cornerRadius: 25.0))
                .foregroundColor(.white)
                
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
                                Text("Pyament")
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
                
            }.padding(50)
            
            Button (action: { self.shouldPopToRootView = false } ){
                Text("Sign Out")
            }
            
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
