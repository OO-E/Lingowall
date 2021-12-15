//
//  WordListItemView.swift
//  wall
//
//  Created by Özgün Ergen on 15.12.2021.
//

import SwiftUI

struct WordListItemView: View {
    var body: some View {
        
        VStack {
            Text("Word")
                .font(.body)
                .fontWeight(.heavy)
                .foregroundColor(Color("TextColor"))
                .padding(.top,16)
            
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.")
                .padding(.leading,10)
                .padding(.trailing,10)
                .frame( minHeight: 35, idealHeight: 50, maxHeight: 65, alignment: .center)
                .minimumScaleFactor(0.75)
                .foregroundColor(Color("ExampleTextColor"))
            
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.")
                .padding(.leading,10)
                .padding(.trailing,10)
                .minimumScaleFactor(0.5)
                .frame( minHeight: 30, idealHeight: 80, maxHeight: 125, alignment: .center)
                .padding(.bottom, 16)
            
            
            
        }.background(Color("CellBackColor"))
            
        
        
    }
}

struct WordListItemView_Previews: PreviewProvider {
    static var previews: some View {
        WordListItemView()
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
        WordListItemView()
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.light)
    }
}
