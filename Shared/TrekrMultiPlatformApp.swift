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
            
            TabView {
                
                NavigationView {
                    LocationsList(store: store)
                }
                .tabItem {
                     Image(systemName: "list.bullet")
                     Text("Locations")
                }
                
                #if os(iOS)
                NavigationView {
                    WorldMap(store: testStore)
                }
                .tabItem {
                     Image(systemName: "map")
                     Text("Map")
                }
                #else
                NavigationView {
                    WorldMap(store: testStore)
                        .frame(width:400)
                }
                .tabItem {
                     Image(systemName: "map")
                     Text("Map")
                }
                #endif

                #if os(iOS)
                NavigationView {
                    TipsList()
                }
                .tabItem {
                     Image(systemName: "person.fill.questionmark")
                     Text("Tips")
                }
                #else
                TipsList()
                    .tabItem {
                     Image(systemName: "person.fill.questionmark")
                     Text("Tips")
                }
                #endif
                
            }
            
        }
    }
}
 
