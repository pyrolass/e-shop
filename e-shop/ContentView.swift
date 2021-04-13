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
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: VStack(){
            HStack {
                Image(systemName: "house.fill")
                    .resizable()
                    .frame(width: 25, height: 25)
                VStack {
                    Text("Deliver to")
                        .bold()
            
                    Text("House")
                        .bold()
                }
            
                
            }
            
            
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
    
    var Content:some View{
        
        VStack() {
            ScrollView  {
                HStack{
                    VStack(alignment:.leading,spacing:10) {
                        Text("You ")
                            .foregroundColor(.pink)
                            .bold()
                            +
                            Text("Shop ")
                            .foregroundColor(.black)
                            .bold()
                            +
                            Text("We ")
                            .bold()
                            .foregroundColor(.pink)
                            +
                            Text("Deliver")
                            .foregroundColor(.black)
                            .bold()
                    }
                    .font(.title)
                    
                    Spacer()
                    
                    Image(systemName: "cart.fill")
                        .resizable()
                        .frame(width: 100, height: 100, alignment: .center)
                        .foregroundColor(.pink)
                    
                    
                    
                }
                .padding()
                .background(Color("mintCream"))
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .padding(.top,10)
                
                
                
                HStack{
                    VStack {
                        Text("Balance")
                            .bold()
                        Text("0$")
                            .bold()
                    }.padding()
                    .font(.title2)
                    .foregroundColor(.black)
                    Spacer()
                    HStack{
                        
                        Image(systemName: "plus")
                            .foregroundColor(.green)
                            .frame(width: 50, height: 50)
                            .background(Color.white)
                            .clipShape(Circle())
                    }.padding()
                }
                .background(Color("mintCream"))
                .clipShape(RoundedRectangle(cornerRadius: 25))
                .padding(.top)
                
                NavigationLink(
                    destination: ShopView(),
                    label: {
                        HStack {
                            Text("Main Store")
                                .foregroundColor(.black)
                                .bold()
                                .font(.title)
                               

                            Spacer()
                        }.padding()
                        .frame(height:150)
                        .background(Color("mintCream"))
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                    }).padding(.top,10)
                
                
                
                
                HStack{
                    Text("Catagories")
                        .bold()
                        .font(.title)
                    
                    Spacer()
                }
                .padding()
                ScrollView(.horizontal){
                    HStack{
                        ForEach(catagories){
                            data in
                            CatagoryView(data: data)
                        }
                    }
                }
                
                }
            }.padding(.leading,10)
        .padding(.trailing,10)
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


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(rootIsActive: .constant(false))
    }
}
