//
//  Factory.swift
//  Design Patterns
//
//  Created by Ethan Lillie on 5/18/17.
//  Copyright © 2017 ME. All rights reserved.
//

import Foundation

enum ProtocolConformingClassType {
    case class1, class2
}

class Factory {
    func getInstanceOfProtocolConformingClass(_ key: ProtocolConformingClassType) -> SomeProtocol {
        switch key {
        case .class1:
            return ProtocolConformingClass1()
        case .class2:
            return ProtocolConformingClass2()
        }
    }
}

protocol SomeProtocol {
    func someMethod()
}

class ProtocolConformingClass1: SomeProtocol {
    func someMethod() {
        print("ProtocolConformingClass1.someMethod()")
    }
}

class ProtocolConformingClass2: SomeProtocol {
    func someMethod() {
        print("ProtocolConformingClass2.someMethod()")
    }
}
