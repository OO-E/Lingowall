//
//  CustomTextField.swift
//  wall
//
//  Created by Özgün Ergen on 13.12.2021.
//

import SwiftUI

struct CustomTextField: View {
    
    @State var text: String = "test"
    @State var title: String = "title"
    
    var body: some View {
        
        VStack(alignment: .leading){
            
            Text(title)
                .font(Font.system(size: 14, weight: .bold, design: .default))
                .lineLimit(nil)
                .foregroundColor(Color("TitleColor"))
                
            TextField("", text: $text)
                .frame(height: 45)
                .background(Color.white)
                .cornerRadius(10.0)
                .font(/*@START_MENU_TOKEN@*/.body/*@END_MENU_TOKEN@*/)
            
        }.padding(16)
    }
}

struct CustomTextField_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextField()
    }
}
