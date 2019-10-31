//
//  ContentView.swift
//  Restaurant
//
//  Created by Guled Ali on 19/10/2019.
//  Copyright © 2019 Guled Ali. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var isPresented = false
    @State var coffIsPresented = false
    @State var smoothIsPresented = false

    var body: some View {
        
        VStack {
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack {
                    ZStack(alignment: .bottom) {
                        
                        Image("pesto-farfalle")
                            .clipped()
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.blue, lineWidth: 2))
                            .frame(width: 220, height: 100)
                        
                        Text("The Pasta Shop")
                            .font(.body)
                            .offset(x: 10, y: 80)
                        
                    }.onTapGesture {
                        print("Pasta image tapped")
                        self.isPresented.toggle()
                        
                        
                    }.sheet(isPresented: $isPresented, content: {
                        
                        DetailView(isShowing: self.$isPresented)
                    })
                    
                    
                    ZStack(alignment: .bottom) {
                        Image("penne-carbonara")
                            .clipped()
                            .clipShape(Circle())
                            .frame(width: 210, height: 150)
                        
                        Text("The Steak house")
                            .offset(x: 0, y: 65)
                            .padding()
                            
                            .font(.body)
                    }.onTapGesture {
                        print("steak image tapped")
                    }
                    
                    ZStack(alignment: .bottom) {
                        Image("fresh-baked-croissant")
                            .clipped()
                            .clipShape(Circle())
                            .frame(width: 220, height: 280)
                        Text("The Bakery shop")
                            .font(.body)
                            .padding()
                    }.onTapGesture {
                        print("Bread image tapped")
                    }
                    
                    Spacer()
                    ZStack(alignment: .bottom) {
                        Image("paella-alicante")
                            .clipped()
                            .clipShape(Circle())
                            .foregroundColor(Color.black)
                            .frame(width: 90, height: 200)
                        Text("The Vegetarian Food       ")
                            .font(.body)
                            .offset(x: 5, y: 40)
                            .padding()
                    }.onTapGesture {
                        print("Vegi image tapped")
                    }
                    
                }
                
            }
            
            Spacer()
            
            VStack {
                
                ScrollView(.horizontal, showsIndicators: false) {
                    
                    HStack {
                        ZStack(alignment: .bottom) {
                            
                            Image("mexican-mocha")
                                .clipped()
                                .clipShape(Circle())
                                .overlay(Circle().stroke(Color.blue, lineWidth: 2))
                                .frame(width: 220, height: 100)
                            
                            Text("The Coffee Shop")
                                .font(.body)
                                .offset(x: 10, y: 80)
                            
                        }.onTapGesture {
                            print("Coffee image Tapped")
                            self.coffIsPresented.toggle()
                            
                            
                        }.sheet(isPresented: $coffIsPresented, content: {
                            
                            CoffeeView(cIsShowing: self.$coffIsPresented)
                        })
                        
                        
                        ZStack(alignment: .bottom) {
                            Image("tower-burger")
                                .clipped()
                                .clipShape(Circle())
                                .frame(width: 210, height: 150)
                            
                            Text("The Burger Shop")
                                .offset(x: 0, y: 65)
                                .padding()
                                
                                .font(.body)
                        }.onTapGesture {
                            print("Burger image tapped")
                        }
                        
                        ZStack(alignment: .bottom) {
                            Image("pepperoni-pizza")
                                .clipped()
                                .clipShape(Circle())
                                .frame(width: 220, height: 280)
                            Text("The Pizza shop")
                                .font(.body)
                                .padding()
                            
                        }.onTapGesture {
                            print("Pizza image tapped")
                        }
                        
                        Spacer()
                        ZStack(alignment: .bottom) {
                            Image("strawberry-cooler")
                                .clipped()
                                .clipShape(Circle())
                                .foregroundColor(Color.black)
                                .frame(width: 90, height: 200)
                            Text("The Smoothie shop      ")
                                .font(.body)
                                .offset(x: 5, y: 40)
                                .padding()
                        }.onTapGesture {
                            print("Smoothie image tapped")
                            self.smoothIsPresented.toggle()
                            
                        }.sheet(isPresented: $smoothIsPresented, content: {
                            SmoothieView(cancelRestu: self.$smoothIsPresented)
                        })
                        
                    }
                    
                }
                
                Spacer()
            }
            
        }
        
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
}


