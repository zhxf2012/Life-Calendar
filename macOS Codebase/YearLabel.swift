//
//  YearLabel.swift
//  Life Calendar
//
//  Created by Wesley Van der Klomp on 8/7/17.
//

import Foundation
import SpriteKit

/// A label for indicating the year for a particular row of the grid.
struct YearLabel {
    
    /// The SpriteKit node for use in the scene.
    var node: SKLabelNode!
    
    /// The primary initializer, containing parameters for all pertinent variables.
    init(text: String, font: Fonts, size: Int, color: Colors, position: CGPoint) {
        node = SKLabelNode(fileNamed: font.rawValue)
        
        node.text = text
        node.fontColor = NSColor(hexString: color.rawValue)
        node.fontSize = CGFloat(size)
        node.position = position
    }
    
    /// Creates a year label with default styling.
    init(text: String) {
        self.init(text: text, font: .yearLabel, size: 14, color: .yearLabelBlack, position: CGPoint(x: 0, y: 0))
    }
    
}
