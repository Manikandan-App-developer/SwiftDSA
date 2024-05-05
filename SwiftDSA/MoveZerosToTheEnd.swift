//
//  MoveZerosToTheEnd.swift
//  SwiftDSA
//
//  Created by Manikandan on 04/05/24.
//

import Foundation


func moveZerosToTheEnd() {
    
    var array = [1,0,20,4,0,5,0]
    
    var nonZeroPointer = 0
    var zeroPointer = 0
    
    while nonZeroPointer < array.count {
        if array[nonZeroPointer] != 0 {
            let temp = array[nonZeroPointer]
            array[nonZeroPointer] = array[zeroPointer]
            array[zeroPointer] = temp
            
            nonZeroPointer += 1
            zeroPointer += 1
            
        } else {
            nonZeroPointer += 1
        }
    }
    print(array)
}


func moveZerToTheEndBruteForce() {
    var array = [1,0,20,4,0,5,0]
    var nonZeroArray = array.filter{$0 != 0}
    var zeroArray = array.filter{$0 == 0}
    print(nonZeroArray + zeroArray)
    
}
