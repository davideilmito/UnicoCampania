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

    var body: some View {
        
        NavigationView{
                
            ScrollView(.vertical,showsIndicators: false){
            
                ActiveTicketsView(viewModel: viewModel)
            
                InactiveTicketsView(viewModel: viewModel)
                            
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

