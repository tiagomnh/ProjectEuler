//
//  PrimesGenerator.swift
//  ProjectEuler
//
//  Created by Tiago Henriques on 08/05/16.
//  Copyright © 2016 Tiago Henriques. All rights reserved.
//

import Foundation

class PrimesGenerator: GeneratorType {

    private var n = 1

    func next() -> Int? {
        repeat {
            n = n + 1
        } while !n.prime

        return n
    }
    
}
