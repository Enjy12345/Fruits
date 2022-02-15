//
//  FruitsApp.swift
//  Fruits
//
//  Created by enjykhaled on 13/02/2022.
//

import SwiftUI

@main
struct FruitsApp: App {
    @AppStorage("isOnboarding") var isOnboarding : Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            }
            else{
                ContentView()
            }
        }
    }
}
 
