//
//  TimeFormatter.swift
//  HourTaskTick
//
//  Created by Sam Davies on 13/11/2024.
//

import Foundation

struct TimeFormatter {
    static func formatTime(_ time: TimeInterval) -> String {
        let minutes = Int(time) / 60
        let seconds = Int(time) % 60
        return String(format: "%02d:%02d", minutes, seconds)
    }
}

