//
//  TicketViewTest.swift
//  UnicoCampania
//
//  Created by Davide Biancardi on 11/12/21.
//

import SwiftUI
import UIKit

struct TicketsView: View {
        
    let activeTicketsArray : [UnicoCampania.Ticket]
    let inactiveTicketsArray : [UnicoCampania.Ticket]

    var body: some View {
        
        NavigationView{
                
            ScrollView(.vertical,showsIndicators: false){
            
                ActiveTicketsView(activeTicketsArray: activeTicketsArray)
            
                InactiveTicketsView(inactiveTicketsArray: inactiveTicketsArray)
                            
            }
            .navigationTitle("Tickets")
            
        }
        
    }

}

struct TicketsView_Preview: PreviewProvider {
    
 
   static let unicoCampaniaVM = UnicoCampaniaViewModel()
        
    
    static var previews: some View {
       
        TicketsView(activeTicketsArray: unicoCampaniaVM.activeTickets, inactiveTicketsArray: unicoCampaniaVM.inactiveTickets).preferredColorScheme(.dark)
    
    }

}

