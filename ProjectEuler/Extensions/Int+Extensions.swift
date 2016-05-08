//
//  Int+Extensions.swift
//  ProjectEuler
//
//  Created by Tiago Henriques on 04/05/16.
//  Copyright © 2016 Tiago Henriques. All rights reserved.
//

import Foundation

extension Int {


    // MARK: - Parity

    var even: Bool {
        return self % 2 == 0
    }

    var odd: Bool {
        return !self.even
    }

    
    // MARK: - Multiple

    func multipleOf(value: Int) -> Bool {
        guard self != 0 || value != 0 else { return false }
        return self % value == 0
    }


    // MARK: - Primality

    var prime: Bool {
        if self <= 1 { return false }
        if self == 2 || self == 3 { return true }
        if self.multipleOf(2) || self.multipleOf(3) { return false }

        var divisor = 5
        while divisor < self / 2 {
            if self % divisor == 0 {
                return false
            }
            divisor = divisor + 1
        }

        return true
    }


    // MARK: - Palindrome

    var palindrome: Bool {
        let absoluteValue = abs(self)
        if absoluteValue < 10 { return true }

        var characters = "\(absoluteValue)".characters

        func checkPalindrome(inout characters: String.CharacterView) -> Bool {

            if characters.count == 0 { return true }

            let first = characters.popFirst()
            let last = characters.popLast()

            if first != nil && last == nil {
                return true
            } else if first != nil && last != nil && first != last {
                return false
            } else {
                return checkPalindrome(&characters)
            }
        }

        return checkPalindrome(&characters)
    }

}
