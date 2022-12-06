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
        OnboardingData(id: 0, backgroundImage: "", objectImage: "point1", primaryText: "Utrecht is one of the best cities for a weekend trip", secondaryText: "", on: false),
        OnboardingData(id: 1, backgroundImage: "", objectImage: "point1", primaryText: "We will help you to find the most beautiful city spots ", secondaryText: "", on: false),
        OnboardingData(id: 2, backgroundImage: "", objectImage: "point1", primaryText: "Let's start a great adventure", secondaryText: "", on: true)
    ]
}
