//
//  SumOF2Indeces.swift
//  SwiftDSA
//
//  Created by Manikandan on 23/03/24.
//

import Foundation


func twoIndecedSum() {
    
    var array = [1,10,5,6,7]
    var target = 17
    
    var dict:[Int: Int] = [:]
    
    for (index, value) in array.enumerated() {
        
        var secondNum = target - value
        
        if dict.keys.contains(where: {$0 == secondNum}) {
            
            print("first Index = \(String(describing: dict[secondNum]))")
            print("second Index = \(index)")
            break
        }
        
        
        dict[value] = index
    }
    
}
