//
//  Problem5.swift
//  ProjectEuler
//
//  Created by Tiago Henriques on 08/05/16.
//  Copyright © 2016 Tiago Henriques. All rights reserved.
//

import Foundation

class Problem5: Solvable {

    func solve() -> Int {
        var value = 20

        while value.divisibleByAllNumbersInRange(1...20) == false {
            value += 20
        }

        return value
    }

}

extension Int {

    func divisibleByAllNumbersInRange(range: Range<Int>) -> Bool {
        for divisor in range {
            if self % divisor != 0 {
                return false
            }
        }

        return true
    }

}