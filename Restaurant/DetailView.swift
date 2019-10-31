//
//  DetailView.swift
//  Restaurant
//
//  Created by Guled Ali on 19/10/2019.
//  Copyright © 2019 Guled Ali. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    @State var isPresented = false
    @Binding var isShowing: Bool
    @State var showAlert = false
    
    var content = AlertContent()

    var body: some View{
        
        NavigationView {

            Form {

                    CheckView(isChecked: false, title: "Lasagn (Veg)")
                    CheckView(isChecked: false, title: "Ravioli")
                    CheckView(isChecked: false, title: "Tagliatelle")
                    CheckView(isChecked: false, title: "Tortellini")
                    CheckView(isChecked: false, title: "Fettuccine")
                  
                    CheckView(isChecked: false, title: "Lasagn (Non-Veg)")
                    

                    CheckView(isChecked: false, title: "Penne")
                    CheckView(isChecked: false, title: "Speghetti")

               

                 CheckView(isChecked: false, title: "Linguine")
                VStack {

                    Button(action: {
                        
                        print("Cancel Button tapped")
                        
                        self.showAlert.toggle()
 
                    }, label: {
                        Text("Place order")
                        }).font(.title).foregroundColor(Color.blue).offset(x: 120, y: 0)
             
                }

   
            }.navigationBarTitle(Text("The Pasta Shop"))
                .padding(.vertical, 20)
            
            .alert(isPresented: $showAlert, content: {
                
                Alert(title: Text(content.alertTitle), message: Text(content.alertMessage), dismissButton: .default(Text("Ok"), action: {
                    
                print("Alert ok button pressed")
                    self.isShowing.toggle()
                
                }))
                
                
            })
            
            .navigationBarItems(trailing: Button(action: {
                print("Bar button pressed")
                self.isShowing.toggle()
                
            }, label: {
                Text("Cancel")
            }))
 
        }
    }
}

//struct preview: PreviewProvider {
//    static var previews: some View {
//        DetailView(isShowing: $isShowing)
//    }
//}
