//
//  Problem2.swift
//  ProjectEuler
//
//  Created by Tiago Henriques on 04/05/16.
//  Copyright © 2016 Tiago Henriques. All rights reserved.
//

import Foundation

class Problem2: ProblemType {

    static func solve() {
        let fibonacciSequence = GeneratorSequence(FibonacciGenerator())

        var sum = 0

        for number in fibonacciSequence where number.even {
            guard number < 4000000 else { break }
            sum = sum + number
        }

        printAnswer("\(sum)")
    }
    
}
