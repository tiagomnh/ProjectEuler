//
//  Int+Euler.swift
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

}
