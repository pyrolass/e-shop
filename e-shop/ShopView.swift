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
    @Namespace var namespace
    @State var selectedItem: ItemModel? = nil
    @State var isDisabled = false
    @ObservedObject var viewModel = ItemViewModel()
    
    @State var search:String = ""
    var body: some View {
        ZStack{
            content
            fullContent
                .background(VisualEffectBlur(blurStyle: .systemMaterial).edgesIgnoringSafeArea(.all))
                .navigationBarTitle("test")
                .navigationBarHidden(true)
                
            
                
        }
    }
    
    var content:some View{
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
                .padding(10)
                
                
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 160)),GridItem(.adaptive(minimum: 160))], content: {
                    
                    ForEach(viewModel.data){data in
                        VStack{
                            ShopItem(data: data)
                                .matchedGeometryEffect(id: data.id, in: namespace, isSource: !showModal)
                                .onTapGesture {
                                    withAnimation(.linear) {
                                        showModal.toggle()
                                        
                                        selectedItem = data
                                        isDisabled = true
                                    }
                                }.disabled(isDisabled)
                        }.matchedGeometryEffect(id: "container\(String(describing: data.id))", in: namespace, isSource: !showModal)
                        
                    }
                })
            }
        }.onAppear(){
            viewModel.fetchData()
            
        }
        .zIndex(1)
    }
    
    @ViewBuilder
    var fullContent: some View {
        if selectedItem != nil {
            ZStack(alignment: .topTrailing) {
                ItemDetail(data: selectedItem!, namespace: namespace)
                
                CloseButton()
                    .padding(16)
                    .onTapGesture {
                        withAnimation(.spring(response: 0.5, dampingFraction: 0.7, blendDuration: 0)) {
                            
                            selectedItem = nil
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                                isDisabled = false
                            }
                        }
                    }
            }
            .zIndex(2)
            .frame(maxWidth: 712)
            .frame(maxWidth: .infinity)
            
        }
    }
}

struct ShopView_Previews: PreviewProvider {
    static var previews: some View {
        ShopView()
    }
}
