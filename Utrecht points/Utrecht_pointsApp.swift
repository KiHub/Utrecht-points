//
//  Utrecht_pointsApp.swift
//  Utrecht points
//
//  Created by  Mr.Ki on 07.11.2022.
//

import SwiftUI

@main
struct Utrecht_pointsApp: App {
    @StateObject private var locationsViewModel = LocationsViewModel()
    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(locationsViewModel)
        }
    }
}
