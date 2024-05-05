//
//  Longest Palindromic Substring.swift
//  SwiftDSA
//
//  Created by Manikandan on 04/05/24.
//

import Foundation


func longestPalindromicSubstring() {
    
    let str = "fabaacghj".map { $0 }
   
    for i in 0..<str.count {
        var substr = ""
        for j in i..<str.count {
            substr.append(str[j])
            if substr == substr.reverse(), substr.count > 1 {
                print(substr)
            }
        }
        
    }
}

extension String {
    func reverse() -> String {
        var res = ""
        for str in self {
            res = "\(str)" + res
        }
        return res
    }
}


