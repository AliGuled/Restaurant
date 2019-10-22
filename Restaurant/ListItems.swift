//
//  ListItems.swift
//  Restaurant
//
//  Created by Guled Ali on 19/10/2019.
//  Copyright © 2019 Guled Ali. All rights reserved.
//

import SwiftUI

struct ListItems: View {
    
   // var items: FoodItems
    var body: some View {
        
        
        NavigationView{
            
            
            NavigationLink("this", destination: DetailView())
                HStack {
                    List{
                        
                        Text("McD")
                        Text("KFC")
                        Text("JJ")
                        Text("Subway")
                        Text("Sagar")
                        
                    }.navigationBarTitle(Text("Restaurants"))
                }
            }
        }
    }



struct ListItems_Previews: PreviewProvider {
    static var previews: some View {
        ListItems()
    }
}
