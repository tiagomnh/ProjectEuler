//
//  ProblemType.swift
//  ProjectEuler
//
//  Created by Tiago Henriques on 04/05/16.
//  Copyright © 2016 Tiago Henriques. All rights reserved.
//

import Foundation

protocol ProblemType {
    static func solve()
}

extension ProblemType {

    static func printAnswer(answer: String) {
        print("\(self): \(answer)")
    }

}