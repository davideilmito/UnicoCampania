//
//  MainView.swift
//  UnicoCampania
//
//  Created by Davide Biancardi on 14/12/21.
//

import SwiftUI

struct TabsView: View {
    
  @ObservedObject var viewModel : UnicoCampaniaViewModel
  
    var body: some View {
        
        
        TabView{
            
            TicketsView(viewModel: viewModel)
            
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
            
            
            
        }
        
        
    }
}

struct MainView_Previews: PreviewProvider {
    
    static let check : UnicoCampaniaViewModel = UnicoCampaniaViewModel()
    
    static var previews: some View {
        TabsView(viewModel: check).preferredColorScheme(.dark)
        
    }
}
