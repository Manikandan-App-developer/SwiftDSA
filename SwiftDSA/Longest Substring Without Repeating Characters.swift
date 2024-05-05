//
//  Longest Substring Without Repeating Characters.swift
//  SwiftDSA
//
//  Created by Manikandan on 04/05/24.
//

import Foundation

//let str = "fabacghj".map { $0 }
//let inputString = "abacabfb"

func longestSubstring(_ s: String) -> String {
    var longest = ""
    var characters = Set<Character>()
    var startIndex = 0
    var endIndex = 0
    
    let sArray = Array(s)

    while endIndex < sArray.count {
        let char = sArray[endIndex]
        if characters.contains(char) {
//           Characters need to be removed by using startIndex
            characters.remove(sArray[startIndex])
            startIndex += 1
        } else {
            characters.insert(char)
            endIndex += 1
            if endIndex - startIndex > longest.count {
                longest = String(sArray[startIndex..<endIndex])
            }
        }
    }
    
    return longest
}


func longSubstring() {
    
    let str = "fabacghj".map { $0 }
    var longestStr = ""
    var set = Set<Character>()
    
    var start = 0
    var end = 0
    
    while end < str.count {
        
        let char = str[end]
        if set.contains(char) {
            set.remove(str[start])
            start += 1
        } else {
            set.insert(char)
            if end - start > longestStr.count {
                longestStr = String(str[start..<end])
            }
        }
    }
    
    print(longestStr)
    
}
