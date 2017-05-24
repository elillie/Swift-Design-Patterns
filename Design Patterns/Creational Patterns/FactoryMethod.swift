//
//  FactoryMethod.swift
//  Design Patterns
//
//  Created by Ethan Lillie on 5/23/17.
//  Copyright © 2017 ME. All rights reserved.
//

import Foundation

protocol Creator {
    func createProduct() -> AnyProduct
}

extension Creator {
    
    func printProduct() {
        // this could be any method in which the default implementation is used.
        
        let product = createProduct()
        
        print(product)
    }
    
}

protocol AnyProduct {
    
}

class SandalCreator: Creator {
    func createProduct() -> AnyProduct {
        return Sandal()
    }
}

class Sandal: AnyProduct {
    
}

class ShoeCreator: Creator {
    func createProduct() -> AnyProduct {
        return Shoe()
    }
}

class Shoe: AnyProduct {
    
}
