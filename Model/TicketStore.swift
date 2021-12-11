//
//  TicketStore.swift
//  ––Campania
//
//  Created by Davide Biancardi on 10/12/21.
//

import Foundation
import SwiftUI


class TicketStore: ObservableObject{
    
    @Published  var ticketArray : [Ticket] = []
    
    
    var ticketOne: Ticket = Ticket(company: "ANM", ticketTipology: "Corsa Singola", expiredDate: Date(), expired: false, route: "Napoli-Napoli", gradient: LinearGradient(colors: [Color.anmPrimaryColor,Color.anmSecondaryColor], startPoint: .leading,endPoint: .trailing), Image: "Anm")
    
    init(){
        
        self.ticketArray = [ticketOne]

    }
        
}
