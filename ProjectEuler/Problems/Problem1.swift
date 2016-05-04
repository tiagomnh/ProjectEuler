//
//  Problem1.swift
//  ProjectEuler
//
//  Created by Tiago Henriques on 04/05/16.
//  Copyright © 2016 Tiago Henriques. All rights reserved.
//

import Foundation

class Problem1: ProblemType {

    static func solve() {
        let answer = Array(1...999)
            .filter { $0.multipleOf(3) || $0.multipleOf(5) }
            .reduce(0, combine: +)

        printAnswer("\(answer)")
    }
    
}
