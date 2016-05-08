//
//  Problem9.swift
//  ProjectEuler
//
//  Created by Tiago Henriques on 08/05/16.
//  Copyright © 2016 Tiago Henriques. All rights reserved.
//

import Foundation

class Problem9: Solvable {

    func solve() -> Int {
        for a in 1...1000 {
            for b in a...1000 {
                let a = Double(a)
                let b = Double(b)
                let c = sqrt(pow(a, 2) + pow(b, 2))

                guard c > b else { continue }
                guard floor(c) - c == 0 else { continue }

                if a + b + c == 1000 {
                    return Int(a * b * c)
                }
            }
        }

        return 0
    }

}
