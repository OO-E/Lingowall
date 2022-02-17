//
//  ListController.swift
//  wall
//
//  Created by Özgün Ergen on 15.12.2021.
//

import SwiftUI

struct ListController: View {
    
    
    var items: [Int] = [1,2,3,4,5,6,6,7]
    @State private var showUpdateView: Bool = false
    
    init() {
        
        UpdateNavigationTheme()
        
    }
    
    var body: some View {
        
        NavigationView {
            
            List {
                
                ForEach(items, id: \.self) { item in
                    
                    WordListItemView()
                        .cornerRadius(10,corners: [.topLeft, .bottomRight, .topRight, .bottomLeft])
                        .listRowInsets(.init())
                        .padding(.top,10)
                        .onTapGesture(count: 2, perform: {
                            showUpdateView = true
                        })
                        .background(
                            NavigationLink(destination: UpdateItemController(),
                                           isActive: $showUpdateView) {
                                               
                                           }.frame(width: 0, height: 0)
                                .hidden()
                        )
                    
                    
                    
                    
                }
                .listRowBackground(Color.clear)
                
            }
            .navigationTitle("Main").toolbar(content: {
                
                
                NavigationLink(destination: AddNewItemController()) {
                    Text("Add")
                        .foregroundColor(Color.white)
                }
                
                
            })
            .navigationBarTitleDisplayMode(.inline)
            .accentColor(Color.white)
            
        }
        
        
    }
}

struct ListController_Previews: PreviewProvider {
    static var previews: some View {
        ListController()
            .previewLayout(.device)
            .preferredColorScheme(.light)
    }
}
