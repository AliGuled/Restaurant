//
//  CoffeeView.swift
//  Restaurant
//
//  Created by Guled Ali on 28/10/2019.
//  Copyright © 2019 Guled Ali. All rights reserved.
//

import SwiftUI

struct CoffeeView: View {
    
    @State var coffeeIsPresented = false
    @Binding var cIsShowing: Bool
    @State var showAlert = false
    @State var cancelResturat = false
    
    var content = AlertContent()

        var body: some View{
            
            NavigationView {

                Form {

                        Text("Coffee").font(.title)
                        HCheckMark(isChecked: false, title: "Americano")
                        HCheckMark(isChecked: false, title: "Espresso")
                        HCheckMark(isChecked: false, title: "Latte")
                        Text("Tea").font(.title)
                        HCheckMark(isChecked: false, title: "English Breakfast")
                        

                        HCheckMark(isChecked: false, title: "Green Tea")
                        HCheckMark(isChecked: false, title: "Ginger Tea")
                        HCheckMark(isChecked: false, title: "Honey Lemon")


                    VStack {
                   
        
                        Button(action: {
                            print("Cancel Button tapped")
                            
                            self.showAlert.toggle()
                        
         
                            
                        }, label: {
                            Text("Place order")
                            }).font(.title).foregroundColor(Color.blue).offset(x: 120, y: 0)
                        }
                    

                }.navigationBarTitle(Text("The Coffee Shop"))
                    .padding(.vertical, 20).offset(x: 0, y: 20)
                    
                    .navigationBarItems(trailing: Button(action: {
                        print("Bar button pressed")
                        self.cIsShowing.toggle()
                    }, label: {
                        Text("Cancel")
                    }).offset(x: 0, y: 0)
                
                ).offset(x: 0, y: -20)
                    
          
                    .alert(isPresented: $showAlert) {
                        
                        Alert(title: Text(content.alertTitle), message: Text(content.alertMessage), dismissButton: .default(Text("Ok"), action: {
                                print("ok pressed")
                            self.cIsShowing.toggle()
                        }))
                        
                }
            
            }
        }
    }

//struct CoffeeView_Previews: PreviewProvider {
//    static var previews: some View {
//        CoffeeView(cIsShowing: $cIsShowing)
//    }
//}
