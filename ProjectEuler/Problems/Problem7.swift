//
//  Problem7.swift
//  ProjectEuler
//
//  Created by Tiago Henriques on 08/05/16.
//  Copyright © 2016 Tiago Henriques. All rights reserved.
//

import Foundation

class Problem7: Solvable {

    func solve() -> Int {
        var generatorSequence = GeneratorSequence(PrimesGenerator())
        (1...10000).forEach { _ in generatorSequence.next() }
        return generatorSequence.next()!
    }
    
}
