//
//  ThreeSum.swift
//  SwiftDSA
//
//  Created by Manikandan on 25/03/24.
//

import Foundation

func threeSumExample() {
    
    let target = 0
    let arr = [7,-6,3,8,-1, 8, -11].sorted()
    print(arr)
    
    for (i, _) in arr.enumerated() {
        
        if i == 0 || arr[i] != arr[i-1] {
            var j = i + 1
            var k = arr.count - 1
            let tar = target - arr[i]
            
            while(j < k) {
                if arr[j] + arr[k] == tar {
                    print("\(arr[i]) \(arr[j]) \(arr[k])")
                    while(j < k && arr[j] == arr[j+1]) {
                        j = j + 1
                    }
                    while(j < k && arr[k] == arr[k - 1]) {
                        k = k - 1
                    }

                    j = j + 1
                    k = k - 1
                } else if (arr[j] + arr[k] < tar ) {
                    j = j + 1
                } else {
                    k = k - 1
                }
            }
        }
    }
    
}


func threeSum() {
    let target = 0
    let arr = [7,-6,3,8,-1, 8, -11].sorted()
    
    for(i, _) in arr.enumerated() {
        if i == 0 || arr[i] != arr[i - 1] {
            var j = i + 1
            var k = arr.count - 1
            let tar = target - arr[i]
            while(j < k) {
                
                if(arr[j] + arr[k] == tar) {
                    print("\(arr[i]) \(arr[j]) \(arr[k])")
                   
                    // Ignoring Duplicates
                    while(j < k && arr[j] == arr[j+1]) {
                        j += 1
                    }
                    
                    // Ignoring Duplicates
                    while(j < k && arr[k] == arr[k-1]) {
                        k -= 1
                    }
                    j += 1
                    k -= 1
                } else if(arr[j] + arr[k] < tar) {
                    j += 1
                } else {
                    k -= 1
                }
            }
            
        }
        
    }
    
    
    
}
