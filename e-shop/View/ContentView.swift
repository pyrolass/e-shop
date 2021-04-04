//
//  ContentView.swift
//  e-shop
//
//  Created by Las Rock on 3/20/21.
//

import SwiftUI

struct ContentView: View {
    @State var isActive=false
    @State var searchField:String = ""
    @Binding var rootIsActive : Bool
    
    var body: some View {
        
        ZStack {
            Content
            
            TabBar
        }
        
    }
    
    var Content:some View{
        ZStack {
            VStack {
                ScrollView  {
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .padding()
                        
                        TextField("",text: $searchField)
                            .foregroundColor(.white)
                        
                        Spacer()
                    }
                    .background(Color.gray)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                    .foregroundColor(.white)
                    .padding(.top,25)
                    
                    HStack{
                        VStack {
                            Text("balance")
                            
                            Text("0 IQD")
                        }.padding()
                        .foregroundColor(.white)
                        Spacer()
                        HStack{
                            Image(systemName: "arrow.up")
                                .foregroundColor(.red)
                                .frame(width: 50, height: 50)
                                .background(Color.white)
                                .clipShape(Circle())
                            
                            
                            
                            Image(systemName: "arrow.down")
                                .foregroundColor(.green)
                                .frame(width: 50, height: 50)
                                .background(Color.white)
                                .clipShape(Circle())
                        }.padding()
                    }
                    .background(Color.gray)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                    
                    NavigationLink(
                        destination: Test(),
                        label: {
                            Text("Main Store")
                                .padding()
                                .padding(.top,10)
                                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 90, maxHeight: .infinity, alignment: .topLeading).foregroundColor(.yellow)
                                .background(Color.gray)
                                .clipShape(RoundedRectangle(cornerRadius: 25))
                        })
                    
                    HStack{
                        Text("Markets")
                            .foregroundColor(.white)
                            .padding(.bottom,50)
                            .padding(.leading,60)
                            .frame(width: 200, height: 100)
                            .background(Color.green)
                            .clipShape(RoundedRectangle(cornerRadius: 25.0))
                        Spacer()
                        Text("Express")
                            
                            .padding(.bottom,50)
                            .padding(.trailing,60)
                            .frame(width: 200, height: 100)
                            .background(Color.green)
                            .clipShape(RoundedRectangle(cornerRadius: 25.0))
                    }
                    
                    
                    HStack{
                        VStack{
                            Image(systemName: "cross.fill")
                                .frame(width: 100, height: 100)
                                .background(Color.gray)
                                .clipShape(RoundedRectangle(cornerRadius: 25.0))
                            Text("Pharma")
                        }
                        VStack{
                            Image(systemName: "cross.fill")
                                .frame(width: 100, height: 100)
                                .background(Color.gray)
                                .clipShape(RoundedRectangle(cornerRadius: 25.0))
                            Text("Pharma")
                        }
                        VStack{
                            Image(systemName: "cross.fill")
                                .frame(width: 100, height: 100)
                                .background(Color.gray)
                                .clipShape(RoundedRectangle(cornerRadius: 25.0))
                            Text("Pharma")
                        }
                        VStack{
                            Image(systemName: "cross.fill")
                                .frame(width: 100, height: 100)
                                .background(Color.gray)
                                .clipShape(RoundedRectangle(cornerRadius: 25.0))
                            Text("Pharma")
                        }
                    }
                    HStack{
                        VStack{
                            Image(systemName: "cross.fill")
                                .frame(width: 100, height: 100)
                                .background(Color.gray)
                                .clipShape(RoundedRectangle(cornerRadius: 25.0))
                            Text("Pharma")
                        }
                        VStack{
                            Image(systemName: "cross.fill")
                                .frame(width: 100, height: 100)
                                .background(Color.gray)
                                .clipShape(RoundedRectangle(cornerRadius: 25.0))
                            Text("Pharma")
                        }
                        VStack{
                            Image(systemName: "cross.fill")
                                .frame(width: 100, height: 100)
                                .background(Color.gray)
                                .clipShape(RoundedRectangle(cornerRadius: 25.0))
                            Text("Pharma")
                        }
                        VStack{
                            Image(systemName: "cross.fill")
                                .frame(width: 100, height: 100)
                                .background(Color.gray)
                                .clipShape(RoundedRectangle(cornerRadius: 25.0))
                            Text("Pharma")
                        }
                    }
                }
            }
        }.navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: VStack(){
            HStack {
                Image(systemName: "house.fill")
                Text("deliver to")
                
            }
            
            Text("House")
        }
        ,
        trailing:
            HStack{
                
                Image(systemName: "bell")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .padding()
                
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .frame(width: 40, height: 40)
                
            }
        )
        
    }
    
    
    
    
    var TabBar:some View{
        TabView{
            
            
            Content
                
                .tabItem {
                    Image(systemName: "house")
                    
                }
                
                
                .tabItem {
                    Image(systemName: "heart")
                }
            Content
                
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            Content
                
                .tabItem {
                    Image(systemName: "bag")
                }
            AccountView(shouldPopToRootView: $rootIsActive)
                
                .tabItem {
                    Image(systemName: "person")
                }
            
            
            
            
            
        }
    }
}
