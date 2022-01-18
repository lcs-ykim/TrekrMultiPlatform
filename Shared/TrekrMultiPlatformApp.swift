//
//  TrekrMultiPlatformApp.swift
//  Shared
//
//  Created by Yeseo Kim on 2022-01-18.
//

import SwiftUI

@main
struct TrekrMultiPlatformApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                LocationDetail(location: Location.example)
            }
        }
    }
}
