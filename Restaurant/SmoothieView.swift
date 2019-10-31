//
//  SmoothieView.swift
//  Restaurant
//
//  Created by Guled Ali on 30/10/2019.
//  Copyright © 2019 Guled Ali. All rights reserved.
//

import SwiftUI

struct SmoothieView: View {
@State var isPresented = false
@State var showAlert = false
@Binding var cancelRestu: Bool
    
    var content = AlertContent()
    
    var body: some View {
        NavigationView {
        Form {
            CheckView(isChecked: false, title: "Strawberry Dream")
            CheckView(isChecked: false, title: "Berry Blitz")
            CheckView(isChecked: false, title: "Raspberry Rush")
            CheckView(isChecked: false, title: "Cherry Blossom")
            CheckView(isChecked: false, title: "Mango Magic")
            CheckView(isChecked: false, title: "Peach Appeal")
            CheckView(isChecked: false, title: "Cranberry Cooler")
            CheckView(isChecked: false, title: "Coconut Dream")
            CheckView(isChecked: false, title: "Ginger Snap")
            
          

            Button(action: {
                print("Place order button pressed")
                self.showAlert.toggle()
            }, label: {
                Text("Place order").font(.title).offset(x:100, y:0)
            })
            
              
           // Spacer()
            
        }.navigationBarTitle(Text("The Smoothie Shop"))//.offset(x: 0, y: -20)
            .padding(.vertical, 20)
            
            .alert(isPresented: $showAlert, content: {
                Alert(title: Text(content.alertTitle), message: Text(content.alertMessage), dismissButton: .default(Text("Ok"), action: {
                    print("Ok alert button pressd")
                    self.cancelRestu.toggle()
                }))
                
            })
            
            
            .navigationBarItems(trailing: Button(action: {
                print("Bar button pressed")
                self.cancelRestu.toggle()
                
            }, label: {
                    Text("Cancel")
                
            })//.offset(x: 0 , y: 47)
            
            )
            
            
        }
        
    }
}

//struct SmoothieView_Previews: PreviewProvider {
//    static var previews: some View {
//        SmoothieView(cancelRestu: <#Binding<Bool>#>)
//    }
//}
