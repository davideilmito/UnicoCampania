//
//  TicketModel.swift
//  UnicoCampania
//
//  Created by Davide Biancardi on 10/12/21.
//

import Foundation
import SwiftUI

struct UnicoCampania{
    
    private(set) var tickets: Array<Ticket> = []
   
     private var indexOfTheTicketToShow: Int? {
        
        get{
            
            let ticketIndexesWhereShowDetailsIsTrue = tickets.indices.filter {tickets[$0].showDetails}
            
            if ticketIndexesWhereShowDetailsIsTrue.hasOnlyOneElement{
                
                return ticketIndexesWhereShowDetailsIsTrue.first

            }
            
            else {return nil}
            
        }
      
        
        
    }
    
    
    init(ticketArray : [Ticket]){
        
        for ticket in ticketArray {
            tickets.append(ticket)
        }
    }
      
    func getActiveTickets()-> [Ticket]{
        
        var activeTickets : [Ticket] = []
        
        for ticket in tickets{
            
            if !ticket.isExpired{
                
                activeTickets.append(ticket)
            }
        }
        return activeTickets
    }
    
    func getinactiveTickets()-> [Ticket]{
        
        var inactiveTickets : [Ticket] = []
        
        for ticket in tickets{
            
            if  ticket.isExpired{
                inactiveTickets.append(ticket)
            }
        }
        
        return inactiveTickets
    
    }
    
    
    func getTicketToShow()-> Ticket?{
        
        if indexOfTheTicketToShow != nil {
            
            
            return tickets[indexOfTheTicketToShow!]
            
        }
        
        return nil
    }
    
 
    mutating func showTicket(_ ticket : Ticket){
           
          let tappedTicketIndex = tickets.firstIndex{ ticket.id.uuidString == $0.id.uuidString }
           
           if tappedTicketIndex != nil {
               
               tickets[tappedTicketIndex!].showDetails = true
                
               
           }
           
       }
    
    mutating func unshowTicket(_ ticket : Ticket){
        
        let tappedTicketIndex = indexOfTheTicketToShow
        
        if tappedTicketIndex != nil {
            
            tickets[tappedTicketIndex!].showDetails = false
         
        }
        
    }
    
    struct Ticket:Identifiable{
        
        var id = UUID()
        var company: String = ""
        var tipology: String = ""
        var expiredDate: Date?
        var isExpired: Bool = false
        var route: String = ""
        var gradient:LinearGradient = LinearGradient(gradient: .init(colors: [.red,.blue]), startPoint: .top, endPoint: .bottom)
        var Image:String = ""
        var issuedOn: Date = Date()
        var activatedOn: Date{ issuedOn.addingTimeInterval(400) }
        var description : String = "L'abbonamento va attivato entro il giorno 15 del mese di utilizzo. Valido fino alle ore 24:00 dell'ultimo giorno del mese solare di attivazione"
        var showDetails = false
            
    }
}


