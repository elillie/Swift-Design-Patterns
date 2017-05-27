//
//  Demonstrations.swift
//  Design Patterns
//
//  Created by Ethan Lillie on 5/18/17.
//  Copyright © 2017 ME. All rights reserved.
//

import Foundation

class Demonstrations {
    
    // MARK: Creational Patterns
    
    static func demonstrateFactory() {
        let factory = Factory()
        
        let object1 = factory.getInstanceOfProtocolConformingClass(.class1)
        object1.someMethod()
        
        let object2 = factory.getInstanceOfProtocolConformingClass(.class2)
        object2.someMethod()
    }
    
    static func demonstrateAbstractFactory() {
        let platform1Factory = FactoryMaker.getFactory(platform: .platform1)
        let platform2Factory = FactoryMaker.getFactory(platform: .platform2)
        
        let platform1product1 = platform1Factory.createProduct1()
        platform1product1.someMethod()
        
        let platform1product2 = platform1Factory.createProduct2()
        platform1product2.someMethod()
        
        let platform2product1 = platform2Factory.createProduct1()
        platform2product1.someMethod()
        
        let platform2product2 = platform2Factory.createProduct2()
        platform2product2.someMethod()
    }
    
    static func demonstrateBuilder() {
        let director = Director()
        
        let oneThingBuilder = OneThingBuilder()
        let anotherThingBuilder = AnotherThingBuilder()
        
        director.setBuilder(oneThingBuilder)
        director.constructProduct()
        
        let oneThing = director.getProduct()
        
        print("\(oneThing.property1!) \(oneThing.property2!)")
        
        director.setBuilder(anotherThingBuilder)
        director.constructProduct()
        
        let anotherThing = director.getProduct()
        
        print("\(anotherThing.property1!) \(anotherThing.property2!)")
    }
    
    static func demonstrateFactoryMethod() {
        let shoeCreator = ShoeCreator()
        shoeCreator.printProduct()
        
        let sandalCreator = SandalCreator()
        sandalCreator.printProduct()
    }
    
    static func demonstratePrototype() {
        let thing1 = PrototypeFactory.getPrototype(thing: 1)
        let thing2 = PrototypeFactory.getPrototype(thing: 2)
        
        thing1?.printThing()
        thing2?.printThing()
    }
    
    static func demonstrateSingleton() {
        let singleton = Singleton.sharedInstance
        
        // let singleton = Singleton() doesn't compile because the init method was made private
        
        print(singleton)
    }
    
// MARK: Structural Patterns
    
    static func demonstrateAdapter() {
        
        let newRectangle: NewRectangle = RectangleAdapter(origin: CGPoint(x: 0.0,
                                                                          y: 0.0),
                                                          size: CGSize(width: 5.0,
                                                                       height: 3.0))
        
        print((newRectangle as! RectangleAdapter).origin)
        print((newRectangle as! RectangleAdapter).size)
        
    }
    
    
}
