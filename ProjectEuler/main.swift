//
//  main.swift
//  ProjectEuler
//
//  Created by Tiago Henriques on 04/05/16.
//  Copyright © 2016 Tiago Henriques. All rights reserved.
//

import Foundation

func printSolution<T: Solvable>(problem: T) {
    let (solution, duration) = problem.solveAndMeasureTime()
    let durationString = String(format: "%.03fs", duration)
    print("\(solution) (\(durationString))")
}

printSolution(Problem5())