//
//  BaseView.swift
//  wall
//
//  Created by Özgün Ergen on 15.12.2021.
//

import SwiftUI

extension View {
    
    func UpdateNavigationTheme() {
        let coloredNavAppearance = UINavigationBarAppearance()
        coloredNavAppearance.configureWithOpaqueBackground()
        coloredNavAppearance.backgroundColor = UIColor(named: "NavigationBackColor")
        coloredNavAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        coloredNavAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
        
        UINavigationBar.appearance().tintColor = UIColor.white
        UINavigationBar.appearance().standardAppearance = coloredNavAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredNavAppearance
    }
    
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
    
    
    func navigation<Destination: View>(
        isActive: Binding<Bool>,
        destination: Destination
      ) -> some View {
           background(NavigationLink(destination: destination,isActive: isActive){

          })
      }
}


