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
    
    
    var ticketOne: Ticket = Ticket(company: "ANM", ticketTipology: "Corsa Singola", expiredDate: nil, expired: false, route: "Napoli - Napoli", gradient: LinearGradient(colors: [Color.anmPrimaryColor,Color.anmSecondaryColor], startPoint: .top,endPoint: .bottom), Image: "Anm")
    
    
    var ticketTwo: Ticket = Ticket(company: "Unico Campania", ticketTipology: "ABB. Mensile Urb. Napoli", expiredDate: Date(), expired: false, route: "Napoli - Napoli", gradient: LinearGradient(colors: [Color.unicoCampaniaPrimaryColor,Color.unicoCampaniaSecondaryColor], startPoint: .topTrailing,endPoint: .bottomLeading), Image: "Unicocampania")
    
    
    var ticketThree: Ticket = Ticket(company: "Eav", ticketTipology: "Corsa Singola", expiredDate: nil, expired: false, route: "Napoli - Napoli", gradient: LinearGradient(colors: [Color.eavPrimaryColor,Color.eavSecondaryColor], startPoint: .center,endPoint: .topLeading), Image: "Eav")
    
    
    var ticketFour: Ticket = Ticket(company: "Tirrenia", ticketTipology: "Corsa Singola", expiredDate: nil, expired: true, route: "Napoli - Ischia", gradient: LinearGradient(colors: [Color.tirreniaPrimaryColor,Color.tirreniaSecondaryColor], startPoint: .topLeading,endPoint: .bottomTrailing), Image: "Tirrenia")
    
    
    init(){
        
        self.ticketArray = [ticketOne,ticketTwo,ticketThree,ticketFour]

    }
        
}
