//
//  HCheckMark.swift
//  Restaurant
//
//  Created by Guled Ali on 23/10/2019.
//  Copyright © 2019 Guled Ali. All rights reserved.
//

import SwiftUI

struct HCheckMark: View {
    
    @State var isChecked  = false
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

struct HCheckMark_Previews: PreviewProvider {
    static var previews: some View {
        HCheckMark(title: "Title goes here")
    }
}
