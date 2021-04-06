//
//  ShopView.swift
//  e-shop
//
//  Created by Las Rock on 4/5/21.
//

import SwiftUI

struct ShopView: View {
    
    var dataForVip = vipData
    @State var showModal = false
    @ObservedObject var viewModel = ItemViewModel()
    
    @State var search:String = ""
    var body: some View {
        VStack{
            ScrollView() {
                LazyHStack {
                    TabView {
                        ForEach(dataForVip) { data in
                            ZStack {
                                VIPItem(data: data)
                            }.clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
                        }
                        .padding(.top)
                    }
                    .frame(width: UIScreen.main.bounds.width, height: 200)
                    .tabViewStyle(PageTabViewStyle())
                }
                
                HStack{
                    Image(systemName: "magnifyingglass")
                        .padding()
                    
                    TextField("",text: $search)
                        .foregroundColor(.white)
                    
                    Spacer()
                }
                .background(Color.gray)
                .clipShape(RoundedRectangle(cornerRadius: 25))
                .foregroundColor(.white)
                .padding(.top,10)
                
                LazyVGrid(columns: [GridItem(.fixed(200)),GridItem(.fixed(200))], content: {
                    ForEach(viewModel.data){data in
                        ShopItem(data: data)
                            .sheet(isPresented: $showModal, content: {
                                ItemDetail(data: data)
                            })
                            .onTapGesture {
                                showModal.toggle()
                            }
                    }
                })
            }
        }.onAppear(){
            viewModel.fetchData()
        }
    }
}

struct ShopView_Previews: PreviewProvider {
    static var previews: some View {
        ShopView()
    }
}
