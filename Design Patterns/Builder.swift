//
//  Builder.swift
//  Design Patterns
//
//  Created by Ethan Lillie on 5/18/17.
//  Copyright © 2017 ME. All rights reserved.
//

import Foundation

enum Property1Type {
    case type1, type2
}
enum Property2Type {
    case type1, type2, type3
}

class Product {
    var property1: Property1Type!
    var property2: Property2Type!
}

protocol Builder {
    var product: Product! {get set}
    
    func buildProperty1()
    func buildProperty2()
}

extension Builder {
    func getProduct() -> Product {
        return product
    }
    
    mutating func createNewProduct() {
        product = Product()
    }
}

class OneThingBuilder: Builder {
    var product: Product!
    
    func buildProperty1() {
        product.property1 = .type1
    }

    func buildProperty2() {
        product.property2 = .type3
    }
}

class AnotherThingBuilder: Builder {
    var product: Product!
    
    func buildProperty1() {
        product.property1 = .type2
    }
    
    func buildProperty2() {
        product.property2 = .type1
    }
}

class Director {
    private var builder: Builder!
    
    func setBuilder(_ builder: Builder) {
        self.builder = builder
    }
    
    func getProduct() -> Product {
        return builder.product
    }
    
    func constructProduct() {
        builder.createNewProduct()
        builder.buildProperty1()
        builder.buildProperty2()
    }
    
}
