//
//  SieveOfEratosthenes.swift
//  ProjectEuler
//
//  Created by Tiago Henriques on 08/05/16.
//  Copyright © 2016 Tiago Henriques. All rights reserved.
//

import Foundation

final class SieveOfEratosthenes {
    let list: [Bool]

    init(limit: Int) {
        var list = Array<Bool>(count: limit, repeatedValue: true)
        list[0] = false
        list[1] = false

        func markMultiples(inout list: [Bool], value: Int) {
            for i in (2 * value).stride(to: list.count, by: value) {
                list[i] = false
            }
        }

        for i in 0..<list.count {
            if list[i] == true {
                markMultiples(&list, value: i)
            }
        }

        self.list = list
    }
}