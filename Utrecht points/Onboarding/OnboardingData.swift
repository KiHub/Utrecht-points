//
//  OnboardingData.swift
//  Something space
//
//  Created by  Mr.Ki on 31.10.2022.
//

import Foundation

struct OnboardingData: Hashable, Identifiable {
    let id: Int
    let backgroundImage: String
    let objectImage: String
    let primaryText: String
    let secondaryText: String
    let on: Bool
    
    static let list: [OnboardingData] = [
        OnboardingData(id: 0, backgroundImage: "path", objectImage: "point1", primaryText: "Are you going to Utrecht?", secondaryText: "", on: false),
        OnboardingData(id: 1, backgroundImage: "path", objectImage: "point1", primaryText: "We have a list of nice spots", secondaryText: "", on: false),
        OnboardingData(id: 2, backgroundImage: "path", objectImage: "point1", primaryText: "let's check all spots!", secondaryText: "", on: true)
    ]
}
