//
//  MainView.swift
//  Motium
//
//  Created by Angel Mariano Mishchanchuk on 29/09/2026.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationStack{
            VStack(alignment: .leading){
                List{
                    Text("BMW E36")
                    Text("Mazda Mazda3")
                }
            }
            .navigationTitle("Motium")
        }
    }
}

#Preview {
    MainView()
}
