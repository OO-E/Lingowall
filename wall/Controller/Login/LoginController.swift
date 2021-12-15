//
//  ContentView.swift
//  wall
//
//  Created by Özgün Ergen on 13.12.2021.
//

import SwiftUI

struct LoginController: View {
    
    
    var body: some View {
        
        
            VStack(alignment: .center, spacing: 0, content: {

                Text("Lingowall")
                    .font(Font.system(.largeTitle))
                    .font(.body)
                    .fontWeight(.heavy)
                    .foregroundColor(Color("HeadColor"))
                    

                CustomTextField(text: "", title: "Email")


                CustomTextField(text: "", title: "Password")

                Button("Login") {

                }
                .frame(width: _WIDTH / 2, height: 48, alignment: .center)
                .background(Color("ButtonColor"))
                .foregroundColor(Color.white)
                .font(.headline)
                .cornerRadius(10)

            })
            .mask(RoundedRectangle(cornerRadius: 10.0))
            .frame(height: _HEIGHT / 1.9)
            .background(Color.init("BackgroundColor"))
            .padding(.leading, 16)
            .padding(.trailing, 16)
            .padding(.top,16)
            .clipped()
            .shadow(color: Color("ShadowColor"), radius: 10, x: 0, y: 0)
            
        
        
       
     
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginController()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 11")
        LoginController()
            .preferredColorScheme(.dark)
            
    }
}
