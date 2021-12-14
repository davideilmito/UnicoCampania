//
//  TicketModel.swift
//  UnicoCampania
//
//  Created by Davide Biancardi on 10/12/21.
//

import Foundation
import SwiftUI



struct UnicoCampania{
    
    private(set) var activeTickets: Array<Ticket> = []
    private(set) var inactiveTickets: Array<Ticket> = []
    
    
    
    init(ticketArray : [Ticket]){
        
        for ticket in ticketArray {
            
            if(ticket.isExpired == false){
                
                activeTickets.append(ticket)
                
                
            }else {
                
                inactiveTickets.append(ticket)
                
            }
            
        }
        
        
    }
    

    func searchTicket(by id: String) -> Ticket {
        
        for ticket in activeTickets {
            <#body#>
        }
        
        
        
        
    }
    
    
    func toggleShowTicket(_ ticket : Ticket){
        
        let tappedTicket = searchTicket(by: ticket.id.uuidString)
        
        print(ticket.company)
        
//        ticket.show.toggle()
        
        
    }
    
    struct Ticket:Identifiable{
        
        var id = UUID()
        var company: String
        var tipology: String
        var expiredDate: Date?
        var isExpired: Bool
        var route: String
        var gradient:LinearGradient
        var Image:String
        var issuedOn: Date
        var activatedOn: Date{ issuedOn.addingTimeInterval(400) }
       
        var description : String = "L'abbonamento va attivato entro il giorno 15 del mese di utilizzo. Valido fino alle ore 24:00 dell'ultimo giorno del mese solare di attivazione"
        
        var show = false
            
    }

    
}


