//
//  MainView.swift
//  UnicoCampania
//
//  Created by Davide Biancardi on 14/12/21.
//

import SwiftUI

struct MainView: View {
    
    let viewModel : UnicoCampaniaViewModel
    
    var body: some View {
        
        
        TabView{
            
            TicketsView(activeTicketsArray: viewModel.activeTickets, inactiveTicketsArray: viewModel.inactiveTickets,viewModel: viewModel)
            
                .tabItem{
                    
                    Label("Tickets",systemImage: "square.split.1x2.fill" )
                    
                }
            
            
            
            FullActiveTicketCardView(ticketCard: viewModel.ticketThree)
            
            
            
                .tabItem{
                    
                    Label("Route",systemImage: "tram" )
                    
                }
            
            
            
            Text("Stores")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            
                .tabItem{
                    
                    Label("Stores",systemImage: "map.circle" )
                    
                }
            
            
            
            Text("Shop")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            
                .tabItem{
                    
                    Label("Shop",systemImage: "cart" )
                    
                }
            
            
            
        }
        
        
    }
}

struct MainView_Previews: PreviewProvider {
    
    static let check : UnicoCampaniaViewModel = UnicoCampaniaViewModel()
    
    static var previews: some View {
        MainView(viewModel: check).preferredColorScheme(.dark)
        
    }
}
