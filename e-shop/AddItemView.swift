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
    @ObservedObject var imageViewModel = ImageViewModel()
    
    
    var itemCatagories=[
        "Clothes",
        "Luxury",
        "Jewelery",
        "Electronics",
        "Cosmetic",
        "Perfume"
    ]
    
    @State var user:String = ""
    
    @State var itemTitle = ""
    @State var itemBrand = ""
    @State var itemPrice:Int = 0
    @State var itemColor:String = ""
    @State var selectedCatagory = "clothes"
    
    
    @State var image:UIImage?
    @State var downloadImage:UIImage?
    
    @State var showActionSheet = false
    @State var showImagePicker = false
    
    @State var sourceType:UIImagePickerController.SourceType = .camera
    
    @ObservedObject var userViewModel = UserViewModel()
    
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
                    HStack {
                        TextField("item price $", value: $itemPrice, formatter: NumberFormatter())
                    }
                    
                    
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
                        self.showActionSheet.toggle()
                    }, label: {
                        Text("add image")
                    }
                    ).actionSheet(isPresented: $showActionSheet, content: {
                        ActionSheet(title: Text("add picture"), message: nil, buttons: [
                            .default(Text("camera"), action: {
                                self.showImagePicker.toggle()
                                self.sourceType = .camera
                            }),
                            .default(Text("Photo Library"), action: {
                                self.showImagePicker.toggle()
                                self.sourceType = .photoLibrary
                            }),
                            .cancel()
                        ])
                    }
                    ).sheet(isPresented: $showImagePicker, content: {
                        ImagePickerModel(sourceType: sourceType, image: $image, showImagePicker: $showImagePicker)
                    })
                }
                
                
                Section{
                    Button(action: {
                        imageViewModel.imageLocation = itemTitle
                        
                        if let img = image{
                            imageViewModel.uploadImage(image: img)
                        }
                        else{
                            print("no image")
                        }
                        
                        
                        
                        
                        
                        
                        let newItem = ItemModel(title: itemTitle, price: itemPrice, owner: userViewModel.model.name, color: itemColor, date: getDate(), views: 10, brand: itemBrand, catagory: selectedCatagory, location: "erbil")
                        
                        viewModel.addData(data: newItem)
                        
                        
                        
                    }, label: {
                        Text("Submit Item")
                        
                        
                    })
                }
                
                
                
            }
            
            
            
        }
        .onAppear{
            userViewModel.fetchData()
            viewModel.fetchData()
            
        }
        .navigationBarTitle("Sell an item!")
    }
}


struct AddItemView_Previews: PreviewProvider {
    static var previews: some View {
        AddItemView()
    }
}

extension AddItemView{
    
    func getDate() -> String {
        let date = Date()
        let calendar = Calendar.current
        let components = calendar.dateComponents([.year, .month, .day], from: date)
        
        let year =  components.year
        let month = components.month
        let day = components.day
        
        return "\(day!)/\(month!)/\(year!)"
    }

}
