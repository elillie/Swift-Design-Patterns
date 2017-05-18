//
//  AbstractFactory.swift
//  Design Patterns
//
//  Created by Ethan Lillie on 5/18/17.
//  Copyright © 2017 ME. All rights reserved.
//

import Foundation

enum Platform {
    case platform1, platform2
}

protocol AbstractFactory {
    func createProduct1() -> Product1
    func createProduct2() -> Product2
}

class FactoryMaker {
    
    static func getFactory(platform: Platform) -> AbstractFactory {
        switch platform {
        case .platform1:
            return Platform1Factory.sharedInstance
        case .platform2:
            return Platform2Factory.sharedInstance
        }
    }
}

class Platform1Factory: AbstractFactory {
    
    static let sharedInstance = Platform1Factory()
    
    func createProduct1() -> Product1 {
        return Platform1Product1()
    }
    
    func createProduct2() -> Product2 {
        return Platform1Product2()
    }
}

class Platform2Factory: AbstractFactory {
    
    static let sharedInstance = Platform2Factory()
    
    func createProduct1() -> Product1 {
        return Platform2Product1()
    }
    
    func createProduct2() -> Product2 {
        return Platform2Product2()
    }
}


protocol Product1 {
    func someMethod()
}
protocol Product2 {
    func someMethod()
}

class Platform1Product1: Product1 {
    func someMethod() {
        print("Platform1Product1.someMethod()")
    }
}

class Platform1Product2: Product2 {
    func someMethod() {
        print("Platform1Product2.someMethod()")
    }
}

class Platform2Product1: Product1 {
    func someMethod() {
        print("Platform2Product1.someMethod()")
    }
}

class Platform2Product2: Product2 {
    func someMethod() {
        print("Platform2Product2.someMethod()")
    }
}

