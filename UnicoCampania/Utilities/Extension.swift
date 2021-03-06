//
//  Extension.swift
//  UnicoCampania
//
//  Created by Davide Biancardi on 10/12/21.
//

import Foundation
import SwiftUI

extension Color {
    
    static let anmPrimaryColor = Color("anmColorPrimary")
    static let anmSecondaryColor = Color("anmColorSecondary")
    static let secondaryCardText = Color("SecondaryCardText")
    static let unicoCampaniaPrimaryColor = Color("unicoCampaniaPrimary")
    static let unicoCampaniaSecondaryColor = Color("unicoCampaniaSecondary")
    static let eavPrimaryColor = Color("EavColorPrimary")
    static let eavSecondaryColor = Color("EavColorSecondary")
    static let tirreniaSecondaryColor = Color("TirreniaPrimary")
    static let tirreniaPrimaryColor = Color("TirreniaSecondary")
    static let backgroundFullCardView = Color("backgroundFullTicketView")

}


extension Array{
    
    var hasOnlyOneElement: Bool{
        
        if count == 1{
            
            return true
            
        }
        else {
            return false
        }
        
    }
    
}
