//
//  UnicoCampaniaApp.swift
//  Shared
//
//  Created by Davide Biancardi on 10/12/21.
//

import SwiftUI

@main
struct UnicoCampaniaApp: App {
    
    @StateObject var tickets = TicketStore()
    
    var body: some Scene {
        WindowGroup {
            MainView().environmentObject(tickets)
        }
    }
}
