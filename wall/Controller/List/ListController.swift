//
//  ListController.swift
//  wall
//
//  Created by Özgün Ergen on 15.12.2021.
//

import SwiftUI

struct ListController: View {
    
    var items: [Int] = [1,2,3,4,5,6,6,7]

    init() {
        UpdateNavigation()
    }
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(items, id: \.self) { item in
                    WordListItemView()
                        .cornerRadius(10,corners: [.topLeft, .bottomRight, .topRight, .bottomLeft])
                        .listRowInsets(.init())
                        .padding(.top,10)
                }
                .listRowBackground(Color.clear)
            }
            .navigationTitle("Main")
            .navigationBarTitleDisplayMode(.large)

        }
        
        

        
    }
}

struct ListController_Previews: PreviewProvider {
    static var previews: some View {
        ListController()
            .previewLayout(.device)
            .preferredColorScheme(.dark)
    }
}
