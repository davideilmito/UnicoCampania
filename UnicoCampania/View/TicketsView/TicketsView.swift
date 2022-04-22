//
//  TicketViewTest.swift
//  UnicoCampania
//
//  Created by Davide Biancardi on 11/12/21.
//

import SwiftUI
import UIKit

struct TicketsView: View {
    
    let viewModel: UnicoCampaniaViewModel
    @State var showModal = false
    @State var showInModal = false
    
    var body: some View {
        
        NavigationView{
            
            ScrollView(.vertical,showsIndicators: false){
                
                ActiveTicketsView(viewModel: viewModel,showModal: $showModal)
                
                InactiveTicketsView(viewModel: viewModel,showInModal: $showInModal)
                
            }
            .navigationTitle("Tickets")
            
        }
        
    }
    
}



struct TicketsView_Preview: PreviewProvider {
    
    
    static let unicoCampaniaVM = UnicoCampaniaViewModel()
    
    
    static var previews: some View {
        
        TicketsView(viewModel: unicoCampaniaVM).preferredColorScheme(.dark)
        
    }
    
}

