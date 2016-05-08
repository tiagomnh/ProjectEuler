//
//  Problem6.swift
//  ProjectEuler
//
//  Created by Tiago Henriques on 08/05/16.
//  Copyright © 2016 Tiago Henriques. All rights reserved.
//

import Foundation

class Problem6: Solvable {

    func solve() -> Int {

        let range = 1...100

        let sumOfSquares = Int(range
            .map { pow(Double($0), 2) }
            .reduce(0, combine: +))

        let squareOfSums = Int(pow(Double(range.reduce(0, combine: +)), 2))

        return squareOfSums - sumOfSquares
    }

}
