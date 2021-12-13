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
    var issuedOn: Date
    var activatedOn: Date{
        issuedOn.addingTimeInterval(400)
        
    }
   
    var description : String = "L'abbonamento va attivato entro il giorno 15 del mese di utilizzo. Valido fino alle ore 24:00 dell'ultimo giorno del mese solare di attivazione"
    var showticket = false
    
    
    
}

