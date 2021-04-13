//
//  ShopView.swift
//  e-shop
//
//  Created by Las Rock on 4/5/21.
//

import SwiftUI

struct CatagoryView: View {
    
    var dataForVip = vipData
    @State var showModal = false
    @Namespace var namespace
    @State var selectedItem: ItemModel? = nil
    @State var isDisabled = false
    @State var catagory:CatagoryModel? = nil
    @ObservedObject var viewModel = CatagoryViewModel(cata: "clothes")
    
    
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
            viewModel.catagory = catagory!.title
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

struct CatagorView_Previews: PreviewProvider {
    static var previews: some View {
        CatagoryView()
    }
}
