//
//  Problem10.swift
//  ProjectEuler
//
//  Created by Tiago Henriques on 08/05/16.
//  Copyright © 2016 Tiago Henriques. All rights reserved.
//

import Foundation

class Problem10: Solvable {

    func solve() -> Int {

        let sieve = SieveOfEratosthenes(limit: 2000000)

        return (1..<sieve.list.count)
            .filter { sieve.list[$0] == true }
            .reduce(0, combine: +)
    }

}
