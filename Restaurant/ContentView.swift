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
            
            ScrollView(.horizontal) {
                
                HStack {
                Image("Mercury")
                    .clipped()
                    .clipShape(Circle())
                Image("Pluto")
                    .clipped()
                    .clipShape(Circle())
                Image("Earth")
                    .clipped()
                    .clipShape(Circle())
                Image("Saturn")
                    .clipped()
                    .clipShape(Circle())
                }
                
            }
        //    Spacer()
            
            
                ListItems()
        }
 
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
