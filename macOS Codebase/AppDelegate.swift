//
//  AppDelegate.swift
//  Life Calendar
//
//  Created by Wesley Van der Klomp on 5/30/17.
//
//

import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
    
    var window: NSWindow!
    
    func applicationDidFinishLaunching(_ notification: Notification) {
        setupWindow()
        
//        let exampleEvent = Event(title: "ABC", colorHex: "000000", starting: Date(), ending: Date())
//        let timeline = Timeline(events: [exampleEvent], name: "Testing ABC 1234")
//        timeline.saveToDisk()
    }
    
    func setupWindow() {
        let windowSize = NSRect(x: 10, y: 10, width: 600, height: 600)
        let windowStyle: NSWindow.StyleMask = [.titled, .resizable , .closable, .miniaturizable]
        
        window = NSWindow(contentRect: windowSize, styleMask: windowStyle, backing: .buffered, defer: false)
        
        window.contentViewController = WeeksViewController()
        window.makeKeyAndOrderFront(nil)
    }
}
