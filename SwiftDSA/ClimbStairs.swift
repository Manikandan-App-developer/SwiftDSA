//
//  ClimbStairs.swift
//  SwiftDSA
//
//  Created by Manikandan on 04/05/24.
//

import Foundation

func climbStairs(n: Int) -> Int {
    
    var array = Array(repeating: 0, count: n+1)
    
    // if there is no step there is only one possiblity
    array[1] = 1
    
    // if there is one step there is only one possiblity to climb the stair
    array[2] = 2
    
    
//    loop from second step
    
    for i in 3..<n+1 {
        array[i] = array[i-1] + array[i-2]
    }
    
    return array[n]
    
}
