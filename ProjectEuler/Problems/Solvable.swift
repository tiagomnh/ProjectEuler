//
//  ProblemType.swift
//  ProjectEuler
//
//  Created by Tiago Henriques on 04/05/16.
//  Copyright © 2016 Tiago Henriques. All rights reserved.
//

import Foundation

protocol Solvable {
    associatedtype Solution
    func solve() -> Solution
    func solveAndMeasureTime() -> (Solution, Double)
}

extension Solvable {

    func solveAndMeasureTime() -> (Solution, Double) {
        let start = NSDate()
        let solution = solve()
        let end = NSDate()
        let timeInterval: Double = end.timeIntervalSinceDate(start)
        return (solution, timeInterval)
    }

}
