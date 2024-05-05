//
//  ViewController.swift
//  SwiftDSA
//
//  Created by Manikandan on 18/01/24.
//

import UIKit


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        sortColors()
//        removeDuplicates()
        printAnswer()
        
    }
    
    
    func selectionSort() {
        var array = [9,8,7,6,4,5,3,2,1]
        for i in 0..<array.count {
            
            var minValue = array[i]
            var minIndex = i
            
            
            for j in i+1..<array.count {
                if array[j] < minValue {
                    minValue = array[j]
                    minIndex = j
                }
            }
            
            var temp = array[i]
            array[i] = array[minIndex]
            array[minIndex] = temp
        }
        
        print(array)
    }
    
    func rotateMatrixBy90Degree() {
        
        var array = [
            [1,2,3],
            [4,5,6],
            [7,8,9]
        ]
        
        for i in 0..<3 {
            for j in i..<3 {
                let temp = array[i][j]
                array[i][j] = array[j][i]
                array[j][i] = temp
            }
        }
        
        print(array)
        
        for (index, i) in array.enumerated() {
            var subArray = [Int]()
            for j in stride(from: i.count-1, to: -1, by: -1) {
                subArray.append(i[j])
            }
            array[index] = subArray
        }
        
        print(array)
        
    }
    
    
    func threeSum() {
        
        let array = [-1, 0, 1, 2, -1, -4,-5].sorted()
        let target = 0

        for i in 0..<array.count - 2 {
            
            if i > 0 && array[i] == array[i - 1] {
                continue
            }
            
            var l =  i + 1
            var r = array.count - 1
            
            while l < r {
                let sum = array[i] + array[l] + array[r]
                if sum == target {
                    print("\(array[i]) + \(array[l]) + \(array[r])")
                    
                    while l < r && array[l] == array[l + 1] {
                        l = l + 1
                    }
                    while l < r && array[r] == array[r - 1] {
                        r = r - 1
                    }
                    l = l + 1
                    r = r - 1
                    
                } else if sum < target {
                    l = l + 1
                } else {
                    r = r - 1
                }
            }
            
        }
        
        
    }
    
    
//    func selectionSort() {
//
//        var array = [1,4,5,6,87,9,10,-2]
//
//        var minIndex = 0
//        var minValue = 0
//
//        while minIndex < array.count - 1 {
//            let value =
//        }
//
//    }
    
    func removeVowelsInAString() {
        
        
        let str = "youcandoit"
        
        for s in str {
            if s == "a" || s == "e" || s == "i" || s == "o" || s == "u" {
                continue
            }
            print(s)
        }
    }
    

    func rotateMatrixBy90() {
        
    }
    
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
    
    
    func reverseAnArray() {
        var array = [1,4,5,6,87,9,10,-2]
        
        var start = 0
        var end = array.count - 1
        
        while start < end {
            
            var temp = array[start]
            array[start] = array[end]
            array[end] = temp
            start += 1
            end -= 1
            
        }
        
        print(array)
    }
    
   
    func longestSubstring(_ arr: [Character]) -> String {
        var maxLen = 0
        var start = 0
        var longestStart = 0
        var charIndex: [Character: Int] = [:]

        for (end, char) in arr.enumerated() {
            if let charIdx = charIndex[char], start <= charIdx {
                start = charIdx + 1
            } else {
                if end - start + 1 > maxLen {
                    maxLen = end - start + 1
                    longestStart = start
                }
            }

            charIndex[char] = end
        }
        
        print("Start = \(start)")
        print("Longest Start = \(longestStart)")
        print("MaxLength = \(maxLen)")

        
        let longestSubstring = String(arr[longestStart..<longestStart + maxLen])
        print(longestSubstring)
        
//        var longestSubstring = ""
//            for i in longestStart..<longestStart + maxLen {
//                longestSubstring.append(arr[i])
//            }
//
//            return longestSubstring
//        
//        return longestSubstring
        
        return ""
    }

    
   
    
    
    func findLargestSum() {
        
        let array = [1,3,5,7,3,6,9,0]
        var windowSize = 3
        
        var subArray:[[Int]] = []
        for i in 0..<(array.count - windowSize) {
            
            let tempArray = Array(array[i..<(i + windowSize)])
            subArray.append(tempArray)
        }
        
        print(subArray)
    }
    
    func moveZerosToLast() {
        
        var array = [1,0,20,4,0,5,0]
        
        var nonZeroPtr = 0
        var zeroPtr = 0
        
        while nonZeroPtr < array.count {
         
            if array[nonZeroPtr] != 0 {
                
                let temp = array[nonZeroPtr]
                array[nonZeroPtr] = array[zeroPtr]
                array[zeroPtr] = temp
                
                nonZeroPtr += 1
                zeroPtr += 1
            } else {
                nonZeroPtr += 1
            }
        }
        
        print(array)
        
        
    }
    
    
    func chessboard() {
        var str = ""
        var rows = 0
        for i in stride(from: 100, to: 0, by: -1) {
            if rows % 2 != 0 {
                str = "\(i) " + str
            } else {
                str = str + "\(i) "
            }
            if str.components(separatedBy: " ").count == 11 {
                print(str)
                str = ""
                rows += 1
            }
        }
    }
    
    func getSmallNum(n: inout Int) {
        var ans = ""
        for index in stride(from: 9, to: 2, by: -1) {
            while n % index == 0 {
                n = n / index
                ans = "\(index)" + ans
            }
        }
        
        print(ans)
    }


}

class Node<T> {
    var value: T
    var next: Node<T>?
    
    init(value: T, next: Node<T>? = nil) {
        self.value = value
        self.next = next
    }
}

extension Node: CustomStringConvertible {
    var description: String {
        if let next = next {
            return "\(value) -> " + String(describing: next)
        }
        return "\(value)"
    }
    
   
}



struct LinkedList<T> {
    var head: Node<T>?
    var tail: Node<T>?
    
    var isEmpty: Bool {
        return head == nil
    }
    
    mutating func push(value: T) {
        
        let newNode = Node(value: value, next: head)
        head = newNode
        
        if tail == nil {
            tail = head
        }
    }
    
    mutating func append(value: T) {
        
        if head == nil {
            push(value: value)
            return
        }
        
        let newNode = Node(value: value)
        tail?.next = newNode
        
        tail = tail?.next
    }
    
    mutating func insert(after index: Int, value: T) {
        var currentIndex = 0
        var currentNode = head
        
        while currentIndex < index && ((currentNode?.next) != nil) {
            currentNode = currentNode?.next
            currentIndex += 1
        }
        
        let newNode = Node(value: value, next: currentNode?.next)
        currentNode?.next = newNode
    }
    
    mutating func findTheMiddleNode() -> Node<T>? {
        var fast = head
        var slow = head
        
        while let newFast = fast?.next?.next {
            fast = newFast
            slow = slow?.next
        }
        return slow
    }
    
    func reverse() {
        
        var next = head?.next
        var head = tail
        
        
    }
}

extension LinkedList: CustomStringConvertible {
    var description: String {
        if let head = head {
            return String(describing: head)
        }
        return "List is Empty"
    }
}
