//
//  PokedexAPIApp.swift
//  PokedexAPI
//
//  Created by user226741 on 9/26/22.
//

import SwiftUI

@main
struct PokedexAPIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(ViewModel())
        }
    }
}
