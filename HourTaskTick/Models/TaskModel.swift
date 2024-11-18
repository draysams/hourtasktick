//
//  TaskModel.swift
//  HourTaskTick
//
//  Created by Sam Davies on 13/11/2024.
//

import Foundation

struct TaskModel: Identifiable {
    let id = UUID()
    var name: String
    var startTime: Date
    var endTime: Date?
    var elapsedTime: TimeInterval {
        return endTime?.timeIntervalSince(startTime) ?? 0
    }
}

