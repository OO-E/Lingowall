//
//  Helper.swift
//  wall
//
//  Created by Özgün Ergen on 13.12.2021.
//

import SwiftUI

//MARK: Screen Width & Height
var _WIDTH: CGFloat = UIScreen.main.bounds.width
var _HEIGHT: CGFloat = UIScreen.main.bounds.height


//MARK: RoundedCorner: Shape
struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}


