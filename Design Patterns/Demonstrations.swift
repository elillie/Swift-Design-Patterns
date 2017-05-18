//
//  Demonstrations.swift
//  Design Patterns
//
//  Created by Ethan Lillie on 5/18/17.
//  Copyright © 2017 ME. All rights reserved.
//

import Foundation

class Demonstrations {
    static func demonstrateFactory() {
        let factory = Factory()
        
        let object1 = factory.getInstanceOfProtocolConformingClass(.class1)
        object1.someMethod()
        
        let object2 = factory.getInstanceOfProtocolConformingClass(.class2)
        object2.someMethod()
        
    }
}
