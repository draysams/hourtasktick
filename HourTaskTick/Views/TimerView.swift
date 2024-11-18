//
//  TimerView.swift
//  HourTaskTick
//
//  Created by Sam Davies on 13/11/2024.
//
//
import SwiftUI

struct TimerView: View {
    @State private var timerIsRunning = false
    @State private var startTime: Date?
    @State private var elapsedTime: TimeInterval = 0
    @State private var taskName: String = ""
    @State private var selectedTask: String = ""
    @State private var timer: Timer?

    let tasks = ["Task A", "Task B", "Task C"] // Sample tasks

    var body: some View {
        VStack {
            Text("Select Task")
            Picker("Task", selection: $selectedTask) {
                ForEach(tasks, id: \.self) { task in
                    Text(task).tag(task)
                }
            }
            .pickerStyle(MenuPickerStyle())

            if timerIsRunning {
                Text("Elapsed Time: \(formatTime(elapsedTime))")
                    .padding()
                Button("Stop") {
                    stopTimer()
                }
            } else {
                Button("Start") {
                    startTimer()
                }
            }
        }
        .padding()
    }

    func startTimer() {
        timerIsRunning = true
        startTime = Date()
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
            if let startTime = startTime {
                elapsedTime = Date().timeIntervalSince(startTime)
            }
        }
    }

    func stopTimer() {
        timerIsRunning = false
        timer?.invalidate()
        timer = nil
        elapsedTime = 0
        taskName = ""
    }

    func formatTime(_ time: TimeInterval) -> String {
        let minutes = Int(time) / 60
        let seconds = Int(time) % 60
        return String(format: "%02d:%02d", minutes, seconds)
    }
}


//import SwiftUI
//
//struct TimerView: View {
//    var body: some View {
//        VStack {
//            Text("HourTaskTick")
//                .font(.headline)
//            Text("Timer Interface Here")
//                .padding()
//        }
//        .padding()
//    }
//}
