//
//  Adapter.swift
//  Design Patterns
//
//  Created by Ethan Lillie on 5/25/17.
//  Copyright © 2017 ME. All rights reserved.
//

import Foundation

class LegacyRectangle {
    // defines rectangle as top left and bottom right corners
    var topLeft: CGPoint
    var bottomRight: CGPoint
    
    init(topLeft: CGPoint, bottomRight: CGPoint) {
        self.topLeft = topLeft
        self.bottomRight = bottomRight
    }
}

protocol NewRectangle {
    init(origin: CGPoint, size: CGSize)
}

class RectangleAdapter: NewRectangle {
    
    private var legacyRectangle: LegacyRectangle
    
    var origin: CGPoint {
        return legacyRectangle.topLeft
    }
    
    var size: CGSize {
        return CGSize(width: legacyRectangle.bottomRight.x - legacyRectangle.topLeft.x,
                      height: legacyRectangle.bottomRight.y - legacyRectangle.topLeft.y)
    }
    
    required init(origin: CGPoint, size: CGSize) {
        self.legacyRectangle = LegacyRectangle(topLeft: origin,
                                               bottomRight: CGPoint(x: origin.x + size.width,
                                                                    y: origin.y + size.height))
    }
}



