//
//  CoffeeConfrim.swift
//  Restaurant
//
//  Created by Guled Ali on 28/10/2019.
//  Copyright © 2019 Guled Ali. All rights reserved.
//

import SwiftUI

struct CoffeeConfrim: View {
    var body: some View {
        
        
        Form {
            
            Text("Confirmation")
                .offset(x: 120, y: 0)
                .font(.largeTitle)
        }
    }
}

struct CoffeeConfrim_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeConfrim()
    }
}
