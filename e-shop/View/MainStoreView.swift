//
//  MainStoreView.swift
//  e-shop
//
//  Created by Las Rock on 4/2/21.
//

import SwiftUI

struct MainStoreView: View {
    var datas = mainStoreModel
    var body: some View {
        VStack{
            ScrollView{
                ForEach(datas){
                    data in
                    ItemsView(data: data)
                        .padding()
                }
            }
        }
    }
}

struct MainStoreView_Previews: PreviewProvider {
    static var previews: some View {
        MainStoreView()
    }
}
