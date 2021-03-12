//
//  Wage.swift
//  shopper
//
//  Created by Bintang Aria Ramadhan on 12/03/21.
//  Copyright © 2021 Starfreak. All rights reserved.
//

import Foundation

class Wage {
    
   class func getHours(wage: Double, price: Double) -> Int {
        return Int(ceil(price/wage))
    }
    
}
