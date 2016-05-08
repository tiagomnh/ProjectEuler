//
//  Problem4.swift
//  ProjectEuler
//
//  Created by Tiago Henriques on 08/05/16.
//  Copyright © 2016 Tiago Henriques. All rights reserved.
//

import Foundation

class Problem4: Solvable {

    func solve() -> Int {

        var largestProduct = 999 * 999

        while largestProduct > 0 {
            defer { largestProduct -= 1 }
            guard largestProduct.palindrome else { continue }

            if largestProduct.productOfTwoThreeDigitNumbers {
                return largestProduct
            }
        }

        return 0
    }

}

private extension Int {

    var productOfTwoThreeDigitNumbers: Bool {
        var factor = 999

        while factor >= 100 {
            defer { factor -= 1 }
            guard self % factor == 0 else { continue }

            let otherFactor = self / factor

            if 100 <= otherFactor && otherFactor <= 999 {
                return true
            }
        }
        
        return false
    }

}
