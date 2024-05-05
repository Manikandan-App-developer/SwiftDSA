//
//  RemoveDuplicateInSortedArray.swift
//  SwiftDSA
//
//  Created by Manikandan on 05/05/24.
//

import Foundation


func removeDuplicates() {
    
    var array = [0,1,1,1,2,2,2,3,3,3,6]
    
    var end = array.count - 1
    
    while end > 0 {
        let prev = array[end - 1]
        let current = array[end]
        
        if current == prev {
            array.remove(at: end)
        }
        
        end -= 1
    }
    
    print(array)
    
}
