//
//  SortColors.swift
//  SwiftDSA
//
//  Created by Manikandan on 05/05/24.
//

import Foundation


//func sortColors() {
//    
//    var array = [2,0,2,1,1,0]
//    
//    var start = 0
//    var mid = 0
//    var end = array.count - 1
//    
//    while mid < end {
//        if array[mid] == 0 {
//            array.swapAt(start, mid)
//            start += 1
//            mid += 1
//        } else if array[mid] == 1 {
//            mid += 1
//        } else {
//            array.swapAt(mid, end)
//            end -= 1
//        }
//    }
//    
//    print(array)
//    
//}


func sortColors() {
    
    var array = [2,0,2,1,1,0]
    
    var start = 0
    var mid = 0
    var end = array.count - 1
    
    while mid < end {
        
        if array[mid] == 0 {
            array.swapAt(start, mid)
            start += 1
            mid += 1
        } else if array[mid] == 1 {
            mid += 1
        } else {
            array.swapAt(mid, end)
            end -= 1
        }
    }
    
    print(array)
}
