//
//  TicketViewTest.swift
//  UnicoCampania
//
//  Created by Davide Biancardi on 11/12/21.
//

import SwiftUI
import UIKit

struct TicketsView: View {
        
    var body: some View {
        
        NavigationView{
                
            ScrollView(.vertical,showsIndicators: false){
            
                ActiveTicketsView()
            
                InactiveTicketsView()
                            
            }
            .navigationTitle("Tickets")
            
        }
        
    }

}

struct TicketsView_Preview: PreviewProvider {
    
    static var previews: some View {
       
        TicketsView().preferredColorScheme(.dark).environmentObject(TicketStore())
    
    }

}

