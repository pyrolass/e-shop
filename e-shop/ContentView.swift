//
//  ContentView.swift
//  e-shop
//
//  Created by Las Rock on 3/20/21.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        ZStack {
            Content

            TabBar
        }
        
    }
    
    var Content:some View{
        ScrollView{
            VStack {
                HStack(){
                    VStack(){
                        HStack {
                            Image(systemName: "house.fill")
                            Text("deliver to")
                            
                        }
                        
                        Text("House")
                    }
                    Spacer()
                    HStack{
                        
                        Image(systemName: "bell")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .padding()
                        
                        Image(systemName: "person.crop.circle")
                            .resizable()
                            .frame(width: 50, height: 50)
                        
                    }
                }
                HStack{
                    Image(systemName: "magnifyingglass")
                        .padding()
                    Text("search")
                    Spacer()
                }
                .background(Color.gray)
                .clipShape(RoundedRectangle(cornerRadius: 25))
                .foregroundColor(.white)
                
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
                
                Text("Restaurants")
                    .padding()
                    .padding(.top,10)
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 90, maxHeight: .infinity, alignment: .topLeading).foregroundColor(.yellow)
                    .background(Color.gray)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                
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
            }.padding()
            
        }
    }
    var TabBar:some View{
        TabView{
            
            
                Content
            
            .tabItem {
                Image(systemName: "house")
                    
            }
            Content
        
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
            Content
        
        .tabItem {
            Image(systemName: "person")
        }
            
            

        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
