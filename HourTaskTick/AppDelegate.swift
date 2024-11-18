import SwiftUI
import AppKit

//class AppDelegate: NSObject, NSApplicationDelegate {
//    var statusItem: NSStatusItem!
//    var timerView = TimerView()  // Initialize TimerView
//
//    func applicationDidFinishLaunching(_ notification: Notification) {
//        // Create the menu bar item with a variable length
//        statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
//        statusItem.button?.title = "⏱ HourTaskTick"
//
//        // Create the menu
//        let menu = NSMenu()
//
//        // Add TimerView to the menu as a custom view
////        let timerItem = NSMenuItem()
////        timerItem.view = NSHostingView(rootView: timerView)  // Use NSHostingView to embed SwiftUI
////        menu.addItem(timerItem)
//
//        let timerItem = NSMenuItem()
//        let hostingView = NSHostingView(rootView: timerView)
//        hostingView.frame = NSRect(x: 0, y: 0, width: 200, height: 100)  // Set explicit size
//        timerItem.view = hostingView
//        menu.addItem(timerItem)
//
//        menu.addItem(NSMenuItem(title: "Test Menu Item", action: nil, keyEquivalent: ""))
//
//
//        // Add separator and Quit option
//        menu.addItem(NSMenuItem.separator())
//        menu.addItem(NSMenuItem(title: "Quit", action: #selector(NSApplication.terminate(_:)), keyEquivalent: "q"))
//
//        // Attach the menu to the status item
//        statusItem.menu = menu
//    }
//}


import SwiftUI
import AppKit

class AppDelegate: NSObject, NSApplicationDelegate {
    var statusItem: NSStatusItem!
    var timerView = TimerView()  // Initialize TimerView

    func applicationDidFinishLaunching(_ notification: Notification) {
        // Create the menu bar item with a variable length
        statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
        statusItem.button?.title = "⏱ HourTaskTick"

        // Create the menu
        let menu = NSMenu()

        // Add TimerView to the menu as a custom view
        let timerItem = NSMenuItem()
        
        // Embed the SwiftUI view within NSHostingView and explicitly set size
        let hostingView = NSHostingView(rootView: timerView)
        hostingView.frame = NSRect(x: 0, y: 0, width: 200, height: 200)  // Set a size for the TimerView
        timerItem.view = hostingView
        
        // Add the TimerItem to the menu
        menu.addItem(timerItem)

        // Add separator and Quit option
        menu.addItem(NSMenuItem.separator())
        menu.addItem(NSMenuItem(title: "Quit", action: #selector(NSApplication.terminate(_:)), keyEquivalent: "q"))

        // Attach the menu to the status item
        statusItem.menu = menu
    }
}
