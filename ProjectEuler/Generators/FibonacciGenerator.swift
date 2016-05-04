//
//  FibonacciGenerator.swift
//  ProjectEuler
//
//  Created by Tiago Henriques on 04/05/16.
//  Copyright © 2016 Tiago Henriques. All rights reserved.
//

import Foundation

class FibonacciGenerator: GeneratorType {

    private var n1 = 1
    private var n2 = 0

    func next() -> Int? {
        let result = n1 + n2
        n1 = n2
        n2 = result
        return result
    }
    
}
