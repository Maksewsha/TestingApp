//
//  TestingAppApp.swift
//  TestingApp
//
//  Created by admin on 20.02.2022.
//

import SwiftUI

@main
struct TestingAppApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: DailyScrum.sampleData)
            }
        }
    }
}
