//
//  Problem3.swift
//  ProjectEuler
//
//  Created by Tiago Henriques on 08/05/16.
//  Copyright © 2016 Tiago Henriques. All rights reserved.
//

import Foundation

extension Int {
}

class Problem3: ProblemType {

    static func solve() {
        let answer = largestPrimeFactorOf(600851475143)
        printAnswer("\(answer)")
    }

    static func largestPrimeFactorOf(number: Int) -> Int {
        let squareRoot = Int(sqrt(Float(number)))

        let primesSequence = GeneratorSequence(PrimesGenerator())

        var largestPrime = 1

        for prime in primesSequence {
            guard prime < squareRoot else { break }
            if number % prime == 0 {
                largestPrime = prime
            }
        }

        return largestPrime
    }
    
}
