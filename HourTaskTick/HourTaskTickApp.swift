//
//  HourTaskTickApp.swift
//  HourTaskTick
//
//  Created by Sam Davies on 13/11/2024.
//

import SwiftUI

@main
struct HourTaskTickApp: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        Settings {
            SettingsView()
        }
    }
}
