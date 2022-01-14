//
//  ContentView.swift
//  Restart
//
//  Created by Firdavs Bagirov on 04/01/22.
//

import SwiftUI

struct ContentView: View {
    // appstorage is property wrapper which uses userDefaults
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        ZStack {
            if isOnboardingViewActive {
                OnboardingView()
            } else {
                HomeView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
