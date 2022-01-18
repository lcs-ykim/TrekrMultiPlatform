//
//  TrekrMultiPlatformApp.swift
//  Shared
//
//  Created by Yeseo Kim on 2022-01-18.
//

import SwiftUI

@main
struct TrekrMultiPlatformApp: App {
    
    @StateObject var store = LocationStore()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                LocationsList(store: store)
            }
        }
    }
}
 
