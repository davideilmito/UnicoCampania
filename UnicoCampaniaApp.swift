//
//  UnicoCampaniaApp.swift
//  Shared
//
//  Created by Davide Biancardi on 10/12/21.
//

import SwiftUI

 @main
struct UnicoCampaniaApp: App {
    
    let unicoCampaniaApp : UnicoCampaniaViewModel = UnicoCampaniaViewModel()
    
    var body: some Scene {
        WindowGroup {
            TabsView(viewModel: unicoCampaniaApp)
        }
    }
}
