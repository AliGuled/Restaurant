//
//  ContentView.swift
//  Restaurant
//
//  Created by Guled Ali on 19/10/2019.
//  Copyright © 2019 Guled Ali. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
       
        
         VStack {
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack {
                    ZStack(alignment: .bottom) {
                        
                        Button("Pizza shop") {
                            print("Tapp")
                          
                        }.padding()
                       
                            Image("veggie-pizza")
                                .clipped()
                                .clipShape(Circle())
                                .overlay(Circle().stroke(Color.blue, lineWidth: 2))
                                .frame(width: 280, height: 280)
                                //.colorInvert()


                    }.onTapGesture {
                        print("Tapped")
                       
                    }

                
                    ZStack(alignment: .bottom) {
                        Image("penne-carbonara copy")
                            .clipped()
                            .clipShape(Circle())
                            //.colorInvert()
                            .frame(width: 150, height: 150)
                                
                            Text("Steak house")
                                .font(.body)
                                //.background(Color.blue)
                                .offset(x: 5, y: 65)
                                .padding()
                               // .foregroundColor(.white)
                    }
                    
                    ZStack(alignment: .bottom) {
                        Image("maple-french-toast")
                            .clipped()
                            .clipShape(Circle())
                            //.colorInvert()
                            .frame(width: 280, height: 280)
                            Text("Sandwich shop")
                                .font(.body)
                               // .background(Color.blue)
                        .padding()
                                //.foregroundColor(.white)
                    }
                    
                    Spacer()
                    ZStack(alignment: .bottom) {
                        Image("pesto-farfalle")
                            .clipped()
                            .clipShape(Circle())
                            .foregroundColor(Color.black)
                           // .colorInvert()
                            .frame(width: 150, height: 200)
                            Text("Pasta shop")
                                .font(.body)
                               // .background(Color.blue)
                                .offset(x: 5, y: 40)
                                .padding()
                               // .foregroundColor(.white)
                    }
                    
                    
                    Spacer()
                    
                    
                }
                
            }
            //Spacer()

            ListItems()
            Spacer()
        }
 
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
