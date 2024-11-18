//
//  SettingsView.swift
//  HourTaskTick
//
//  Created on 13/11/2024.
//

import SwiftUI

struct SettingsView: View {
    @AppStorage("reminderInterval") private var reminderInterval: Double = 15.0

    var body: some View {
        Form {
            Section(header: Text("Reminder Settings")) {
                Slider(value: $reminderInterval, in: 5...60, step: 5) {
                    Text("Reminder Interval")
                }
                Text("Reminder every \(Int(reminderInterval)) minutes")
            }
        }
        .padding()
    }
}

