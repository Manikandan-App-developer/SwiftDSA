//
//  Transpose2DMatrix.swift
//  SwiftDSA
//
//  Created by Manikandan on 05/05/24.
//

import Foundation


func transpose2DMatrix() {
    
//        Change row to Column and viceversa
    
    /*
     
     1 4 7
     2 5 8
     3 6 9
     
     */
    
    
    var array = [
        [1,2,3],
        [4,5,6],
        [7,8,9]
    ]
    
    for i in 0..<array.count {
        for j in 0..<i {
            let temp = array[i][j]
            array[i][j] = array[j][i]
            array[j][i] = temp
            
        }
    }
    
    print(array)
    
}
