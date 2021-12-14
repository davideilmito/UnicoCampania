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
    
    let viewModel: UnicoCampaniaViewModel

    var body: some View {
        
        NavigationView{
                
            ScrollView(.vertical,showsIndicators: false){
            
                ActiveTicketsView(activeTicketsArray: activeTicketsArray,viewModel: viewModel)
            
                InactiveTicketsView(inactiveTicketsArray: inactiveTicketsArray,viewModel: viewModel)
                            
            }
            .navigationTitle("Tickets")
            
        }
        
    }

}

struct TicketsView_Preview: PreviewProvider {
    
 
   static let unicoCampaniaVM = UnicoCampaniaViewModel()
        
    
    static var previews: some View {
       
        TicketsView(activeTicketsArray: unicoCampaniaVM.activeTickets, inactiveTicketsArray: unicoCampaniaVM.inactiveTickets,viewModel: unicoCampaniaVM).preferredColorScheme(.dark)
    
    }

}

