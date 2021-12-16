//
//  UnicoCampaniaViewModel.swift
//  UnicoCampania
//
//  Created by Davide Biancardi on 13/12/21.
//

import Foundation
import SwiftUI

//OUR VIEW MODEL WILL CREATE THE MODEL

class UnicoCampaniaViewModel: ObservableObject{
    
    private let tickets : [UnicoCampania.Ticket]
    
    @Published private(set) var model : UnicoCampania
    
    private  let ticketOne: UnicoCampania.Ticket = UnicoCampania.Ticket(company: "ANM", tipology: "Corsa Singola", expiredDate: nil, isExpired: false, route: "Napoli - Napoli", gradient: LinearGradient(colors: [Color.anmPrimaryColor,Color.anmSecondaryColor], startPoint: .top,endPoint: .bottom), Image: "Anm",issuedOn: Date())
    
    
    let ticketTwo: UnicoCampania.Ticket = UnicoCampania.Ticket(company: "Unico Campania", tipology: "ABB. Mensile Urb. Napoli", expiredDate: Date(), isExpired: false, route: "Napoli - Napoli", gradient: LinearGradient(colors: [Color.unicoCampaniaPrimaryColor,Color.unicoCampaniaSecondaryColor], startPoint: .topTrailing,endPoint: .bottomLeading), Image: "Unicocampania",issuedOn: Date(timeIntervalSince1970: Double.random(in: 100000...1000000000)))
    
//    ticket three is not private just for debug reason 
    
     let ticketThree: UnicoCampania.Ticket = UnicoCampania.Ticket(company: "Eav", tipology: "Corsa Singola", expiredDate: nil, isExpired: false, route: "Napoli - Napoli", gradient: LinearGradient(colors: [Color.eavPrimaryColor,Color.eavSecondaryColor], startPoint: .center,endPoint: .topLeading), Image: "Eav",issuedOn:  Date(timeIntervalSince1970: Double.random(in:  100000...1000000000)))
    
    
     private let  ticketFour: UnicoCampania.Ticket = UnicoCampania.Ticket(company: "Tirrenia", tipology: "Corsa Singola", expiredDate: nil, isExpired: true, route: "Napoli - Ischia", gradient: LinearGradient(colors: [Color.tirreniaPrimaryColor,Color.tirreniaSecondaryColor], startPoint: .topLeading,endPoint: .bottomTrailing), Image: "Tirrenia",issuedOn: Date(timeIntervalSince1970: Double.random(in:  100000...1000000000)))
    
    init(){
        
        tickets = [ticketOne,ticketTwo,ticketThree,ticketFour]
        
        model = UnicoCampania(ticketArray: tickets)
        
    }
    
    
    //MARK: - GET INFORMATION FROM THE MODEL
    
    var activeTickets: [UnicoCampania.Ticket]{
        
        model.getActiveTickets()
    
    }
    
    
    var inactiveTickets: [UnicoCampania.Ticket]{
        
        model.getinactiveTickets()
        
    }
    
    
    
    func getTicketToShow()-> UnicoCampania.Ticket?{
        
        return  model.getTicketToShow()
        
        
        
    }
    
    
  //MARK: - User Intent
    
    
    func showTicket(_ ticket: UnicoCampania.Ticket)  {
        
        model.showTicket(ticket)
        
    }
    
    func unshowTicket()  {
        
        model.unshowTicket()
        
    }
    


}
