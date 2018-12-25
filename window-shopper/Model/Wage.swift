//
//  Wage.swift
//  window-shopper
//
//  Created by Wafaa Abu Dawod on 12/25/18.
//  Copyright © 2018 Wafaa Abu Dawod. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage:Double, forPrice price:Double) -> Int {
    return Int(ceil(price / wage))
        
    }}
