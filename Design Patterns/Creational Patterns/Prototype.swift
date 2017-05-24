//
//  Prototype.swift
//  Design Patterns
//
//  Created by Ethan Lillie on 5/23/17.
//  Copyright © 2017 ME. All rights reserved.
//

import Foundation

protocol Clonable {
    func clone() -> Clonable
    
    func printThing()
}

class Thing1: Clonable {
    
    internal func clone() -> Clonable {
        return Thing1()
    }
    
    func printThing() {
        print(self)
    }
}

class Thing2: Clonable {
    internal func clone() -> Clonable {
        return Thing2()
    }
    
    func printThing() {
        print(self)
    }
}

class PrototypeFactory {
    static let prototypeArray:[Int: Clonable] = [1:Thing1(), 2:Thing2()]
    
    static func getPrototype(thing: Int) -> Clonable? {
        return prototypeArray[thing]?.clone() ?? nil
    }
    
}
