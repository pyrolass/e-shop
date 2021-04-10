//
//  AddItemView.swift
//  e-shop
//
//  Created by Las Rock on 4/9/21.
//

import SwiftUI
import Firebase

struct AddItemView: View {
    
    var viewModel = ItemViewModel()
    
    var itemCatagories=[
        "clothes",
        "vehicles",
        "luxury",
        "jewelery",
        "furniture",
        "cosmetic"
    ]
    
    @State var itemTitle = ""
    @State var itemBrand = ""
    @State var itemPrice:Int=0
    @State var itemColor:String = ""
    @State var selectedCatagory = "clothes"
    
    var isDisabled:Bool{
        itemTitle.isEmpty || itemBrand.isEmpty || itemColor.isEmpty
            || itemPrice <= 0
    }
    
    var body: some View {
        VStack{
            Form {
                Section{
                    TextField("item name",text:$itemTitle)
                }
                Section{
                    TextField("item price $", value: $itemPrice, formatter: NumberFormatter())
                        .keyboardType(.decimalPad)
                }
                Section {
                    Picker("Catagory", selection: $selectedCatagory) {
                        ForEach(itemCatagories, id: \.self) {
                            Text($0)
                        }
                    }
                    
                }
                
                Section{
                    TextField("item color",text:$itemColor)
                }
                
                Section{
                    TextField("item brand",text:$itemBrand)
        
                }
                
                Section{
                    Button(action: {
                        
                            var newItem = ItemModel(title: itemTitle, price: itemPrice, owner: Auth.auth().currentUser?.uid as! String, color: itemColor, views: 10, brand: itemBrand, catagory: selectedCatagory, location: "erbil")
                            viewModel.addData(data: newItem)
                        
                    }, label: {
                        Text("Submit Item")
                            
                    })
                }.disabled(isDisabled)
                
            }
            
            
            
        }
        .navigationBarTitle("Sell an item!")
    }
}


struct AddItemView_Previews: PreviewProvider {
    static var previews: some View {
        AddItemView()
    }
}
