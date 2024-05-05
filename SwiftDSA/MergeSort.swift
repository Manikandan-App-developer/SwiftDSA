//
//  MergeSort.swift
//  SwiftDSA
//
//  Created by Manikandan on 04/05/24.
//

import Foundation

/*
var array = [9,8,7,6,4,5,3,2,1]
print(mergeSort(array: array))
 */

func mergeSort(array:[Int]) -> [Int] {
    if array.count <= 1 {
        return array
    }
    let leftArray = Array(array[0..<array.count / 2])
    let rightArray = Array(array[array.count / 2..<array.count])
    
    return merge(leftArray: mergeSort(array: leftArray), rightArray: mergeSort(array: rightArray))
}

func merge(leftArray: [Int], rightArray: [Int]) -> [Int] {
    
    var left = leftArray
    var right = rightArray
    
    var array = [Int]()
    
    while left.count > 0 && right.count > 0 {
        if left.first! < right.first! {
            array.append(left.removeFirst())
        } else {
            array.append(right.removeFirst())
        }
    }
        
    return array + left + right
}


