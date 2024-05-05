//
//  TwoSum.swift
//  SwiftDSA
//
//  Created by Manikandan on 04/05/24.
//

import Foundation

//nums = [2,7,11,15], target = 9

func twoSum() {
    let arr = [3,2,4].sorted()
    print(arr)
    let target = 6
    
    var s = 0
    var e = arr.count - 1
    
    while s < e {
        if arr[s] + arr[e] == target {
            print("[\(s),\(e)]")
            return
        } else if arr[s] + arr[e] > target {
            e -= 1
        } else {
            s += 1
        }
    }
}
