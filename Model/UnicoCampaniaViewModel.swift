//
//  UnicoCampaniaViewModel.swift
//  UnicoCampania
//
//  Created by Davide Biancardi on 13/12/21.
//

import Foundation
import SwiftUI


//OUR VIEW MODEL WILL CREATE THE MODEL

class UnicoCampaniaViewModel{
    
    private let tickets : [UnicoCampania.Ticket]
    
    private(set) var model : UnicoCampania
    
    
   private  let ticketOne: UnicoCampania.Ticket = UnicoCampania.Ticket(company: "ANM", tipology: "Corsa Singola", expiredDate: nil, isExpired: false, route: "Napoli - Napoli", gradient: LinearGradient(colors: [Color.anmPrimaryColor,Color.anmSecondaryColor], startPoint: .top,endPoint: .bottom), Image: "Anm",issuedOn: Date())
    
    
   private let ticketTwo: UnicoCampania.Ticket = UnicoCampania.Ticket(company: "Unico Campania", tipology: "ABB. Mensile Urb. Napoli", expiredDate: Date(), isExpired: false, route: "Napoli - Napoli", gradient: LinearGradient(colors: [Color.unicoCampaniaPrimaryColor,Color.unicoCampaniaSecondaryColor], startPoint: .topTrailing,endPoint: .bottomLeading), Image: "Unicocampania",issuedOn: Date(timeIntervalSince1970: Double.random(in: 0...100000000)))
    
    
     let ticketThree: UnicoCampania.Ticket = UnicoCampania.Ticket(company: "Eav", tipology: "Corsa Singola", expiredDate: nil, isExpired: false, route: "Napoli - Napoli", gradient: LinearGradient(colors: [Color.eavPrimaryColor,Color.eavSecondaryColor], startPoint: .center,endPoint: .topLeading), Image: "Eav",issuedOn:  Date(timeIntervalSince1970: Double.random(in:  0...100000000)))
    
    
    private let  ticketFour: UnicoCampania.Ticket = UnicoCampania.Ticket(company: "Tirrenia", tipology: "Corsa Singola", expiredDate: nil, isExpired: true, route: "Napoli - Ischia", gradient: LinearGradient(colors: [Color.tirreniaPrimaryColor,Color.tirreniaSecondaryColor], startPoint: .topLeading,endPoint: .bottomTrailing), Image: "Tirrenia",issuedOn: Date(timeIntervalSince1970: Double.random(in:  0...100000000)))
    
    
    init(){
        
        tickets = [ticketOne,ticketTwo,ticketThree,ticketFour]
        
        model = UnicoCampania(ticketArray: tickets)
        
    }
    
    
    var activeTickets: [UnicoCampania.Ticket]{
        
        model.activeTickets
        
    }
    
    
    var inactiveTickets: [UnicoCampania.Ticket]{
        
        model.inactiveTickets
        
    }
    
}
