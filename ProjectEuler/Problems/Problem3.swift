//
//  Problem3.swift
//  ProjectEuler
//
//  Created by Tiago Henriques on 08/05/16.
//  Copyright © 2016 Tiago Henriques. All rights reserved.
//

import Foundation

class Problem3: Solvable {

    func solve() -> Int {
        return largestPrimeFactorOf(600851475143)
    }

    func largestPrimeFactorOf(number: Int) -> Int {
        var divisor = Int(sqrt(Float(number)))

        while divisor > 1 {
            if number % divisor == 0 && divisor.prime {
                return divisor
            }

            divisor -= 1
        }

        return 0
    }
    
}
