//
//  DetailView.swift
//  Restaurant
//
//  Created by Guled Ali on 19/10/2019.
//  Copyright © 2019 Guled Ali. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        
        NavigationView {
            Form {
                CheckView(isChecked: false, title: "Burger")
                CheckView(isChecked: false, title: "CheeseBurger")
                CheckView(isChecked: false, title: "Fries")
                padding()
            }.navigationBarTitle(Text("Menu"))
            .padding(7)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
