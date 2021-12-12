//
//  ContentView.swift
//  Shared
//
//  Created by Davide Biancardi on 10/12/21.
//

import SwiftUI

struct MainView: View {
    
    var body: some View {
       
        TabView{
            
            TicketsView()
                
            .tabItem{
               
                Label("Tickets",systemImage: "square.split.1x2.fill" )
            
            }
            
            
            Text("Route")
                .font(.largeTitle)
                .fontWeight(.bold)
                
            
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
            
            
            
        }.accentColor(.white)
        
              
        
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView().preferredColorScheme(.dark).environmentObject(TicketStore())
    
    }
}
