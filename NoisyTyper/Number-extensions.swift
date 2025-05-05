//
//  Number-extensions.swift
//  NoisyTyper
//
//  Created by Aladdin on 15/12/8.
//  Copyright © 2015年 Aladdin. All rights reserved.
//

import Foundation
public extension Float {
    static func random(_ lower: Float = 0, _ upper: Float = 100) -> Float {
        let randomDouble = Double(arc4random()) / Double(UInt32.max)
        return Float(randomDouble * Double(upper - lower) + Double(lower))
    }
}
public extension Int {
    static func random(_ lower: Int = 0, _ upper: Int = 100) -> Int {
        return lower + Int(arc4random_uniform(UInt32(upper - lower + 1)))
    }
}
