//
//  ActiveTicketsView.swift
//  UnicoCampania
//
//  Created by Davide Biancardi on 12/12/21.
//

import SwiftUI

struct ActiveTicketsView: View {
    
   let viewModel: UnicoCampaniaViewModel
   @State var ticketSelected : UnicoCampania.Ticket = UnicoCampania.Ticket()
   @State var showModal = false
    
    var body: some View {
        
       
        VStack(spacing:4){
            
            Text("Active")
            
                .font(.title2)
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading,18)
            
            VStack(spacing:18){
                
                ForEach(viewModel.activeTickets){
                    
                    ticket in
                    
                    TicketCardView(ticket: ticket)
                        .onTapGesture(perform: {
                          viewModel.showTicket(ticket)
                            ticketSelected = ticket
                            print("\(ticket.company)")
                            showModal.toggle()
                        })
                        
                 
                
                }//ForEach
                
                
                
                
       
                    
                }//Vstack Cards
                
                
                
                
        }.sheet(isPresented: $showModal) {
        
            FullActiveTicketCardView(ticketCard: $ticketSelected)
        
        }

            
    
        }
            
            
        }
        
        



struct ActiveTicketsView_Previews: PreviewProvider {
    
    
    static let unicoCampaniaVM = UnicoCampaniaViewModel()
    
    
    static var previews: some View {
        
        ActiveTicketsView(viewModel: unicoCampaniaVM,ticketSelected: unicoCampaniaVM.ticketThree).preferredColorScheme(.dark)
        
    }
}
