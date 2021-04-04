//
//  Test.swift
//  e-shop
//
//  Created by Las Rock on 3/31/21.
//

import SwiftUI
import Firebase

struct Test: View {
    @ObservedObject private var viewModel = TestViewModel()
    @State var name:String = ""
    
    
        
    
    
    var body: some View {
        VStack{
            ForEach(viewModel.data){ data in
                
                Text(data.name)
            }
            TextField("enter your name",text: $name)
            Button(action: {
                if name != ""{
                let newName=Data(name: name)
                viewModel.addData(data: newName)
                }
                else{
                    print("name is empty")
                }
                
            }, label: {
                Text("Button")
            })
                
            
        }.onAppear(){
            viewModel.fetchData()
        }
    }
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test()
    }
}
