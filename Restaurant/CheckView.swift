//
//  CheckView.swift
//  Test 2
//
//  Created by Guled Ali on 19/10/2019.
//  Copyright © 2019 Guled Ali. All rights reserved.
//

import SwiftUI

struct CheckView: View {
    
    @State var isChecked: Bool = false
       
       var title: String
       
       func toggle() {
           isChecked = !isChecked
       }
    var body: some View {
        
        Button(action: toggle) {
            
            VStack {
                
                HStack {
                Image(systemName: isChecked ? "checkmark.square" : "square")
                    .font(.body)
                Text(title)
                    .foregroundColor(Color.gray)
                    .font(.body)
                }
                
            }
        }
        .font(.title)
        
    }
}

struct CheckView_Previews: PreviewProvider {
    static var previews: some View {
        CheckView(title: "Tomoto Basal")
    }
}
