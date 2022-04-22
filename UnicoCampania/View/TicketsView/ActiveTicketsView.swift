//
//  ActiveTicketsView.swift
//  UnicoCampania
//
//  Created by Davide Biancardi on 12/12/21.
//

import SwiftUI

struct ActiveTicketsView: View {
    
    let viewModel: UnicoCampaniaViewModel
    @Binding var showModal : Bool
    
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
                            print("\(ticket.company)")
                            showModal.toggle()
                        })
                    
                    
                    
                }//ForEach
                
                
            }//Vstack Card
            .fullScreenCover(isPresented: $showModal){
                
                FullActiveTicketCardView(showModal: $showModal, ticketCard: viewModel.getTicketToShow()!, viewModel: viewModel )
                
            }
            
        }
        
    }
}



struct ActiveTicketsView_Previews: PreviewProvider {
    
    static let unicoCampaniaVM = UnicoCampaniaViewModel()
    
    static var previews: some View {
        
        ActiveTicketsView(viewModel: unicoCampaniaVM,showModal: .constant(false)).preferredColorScheme(.dark)
        
    }
}
