//
//  Singleton.swift
//  Design Patterns
//
//  Created by Ethan Lillie on 5/24/17.
//  Copyright © 2017 ME. All rights reserved.
//

import Foundation

class Singleton {
    static let sharedInstance = Singleton()
    
    private init() {
    }
}
