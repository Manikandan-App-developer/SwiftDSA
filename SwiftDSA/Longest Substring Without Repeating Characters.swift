//
//  Longest Substring Without Repeating Characters.swift
//  SwiftDSA
//
//  Created by Manikandan on 04/05/24.
//

import Foundation

//let str = "fabacghj".map { $0 }
//let inputString = "abacabfb"


//func longestSubstring() {
//    
//    let string = "aaassssaaaaaabcdvzdb"
//    var dict = [Character: Int]()
//    var longestSequence = 0
//    var longestStr = ""
//    
//    let arr = string.map{$0}
//    
//    var startIndex = 0
//    for (endIndex, value) in string.enumerated() {
//        if let existingItemIndex = dict[value], existingItemIndex >= startIndex {
//            startIndex = existingItemIndex + 1
//        }
//        
//        longestSequence = max(longestSequence, endIndex - startIndex + 1)
//        
//        if longestSequence > longestStr.count {
//            longestStr = String(arr[startIndex..<endIndex + 1])
//        }
//        
//        dict[value] = endIndex
//    }
//
//    print(longestSequence)
//        
//    print("Longest Substring:", longestStr)
//}


func longestSubstring() {
    
    let string = "aaassssaaaaaabcdvzdb"
    
    let arr = string.map{$0}
    
    var dict = [Character: Int]()
    
    var start = 0
    var longestStr = ""
    var longestSequence = 0
    
    for(index, value) in string.enumerated() {
        
        if let existingItemIndex = dict[value] {
            start = existingItemIndex + 1
        }
        
        longestSequence = max(longestSequence, index - start + 1)
        
        if longestSequence > longestStr.count {
            longestStr = String(arr[start..<index + 1])
        }
        
        dict[value] = index
    }
    
    print(longestSequence)
    print(longestStr)
    
    
}


