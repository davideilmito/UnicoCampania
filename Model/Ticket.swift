//
//  TicketModel.swift
//  UnicoCampania
//
//  Created by Davide Biancardi on 10/12/21.
//

import Foundation
import SwiftUI


struct Ticket:Identifiable{
    
    
    var id = UUID()
    var company: String
    var ticketTipology: String
    var expiredDate: Date?
    var expired: Bool
    var route: String
    var gradient:LinearGradient
    var Image:String
    
    
    
    
}

