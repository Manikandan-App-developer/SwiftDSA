//
//  ChessboardPattern.swift
//  SwiftDSA
//
//  Created by Manikandan on 05/05/24.
//

import Foundation


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
    print(str)
}
