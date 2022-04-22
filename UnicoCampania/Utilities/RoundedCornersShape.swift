//
//  RoundedSpecificCorners.swift
//  UnicoCampania
//
//  Created by Davide Biancardi on 11/12/21.
//

import Foundation
import UIKit
import SwiftUI


struct RoundedCornersShape: Shape {

    let corners: UIRectCorner
    let radius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect,byRoundingCorners: corners,cornerRadii: CGSize(width: radius, height: radius))
       
        return Path(path.cgPath)
        
    }

}
