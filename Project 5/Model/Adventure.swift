//
//  Adventure.swift
//  Project 5
//
//  Created by Julien on 1/31/24.
//

import Foundation

struct Adventure {
    
    init(_ stor: String, _ pOne: String, _ pTwo: String, _ rOne: Int, _ rTwo: Int) {
        story = stor
        pathOne = pOne
        pathTwo = pTwo
        resultOne = rOne
        resultTwo = rTwo
    }
    
    var story: String
    var pathOne: String
    var pathTwo: String
    var resultOne: Int
    var resultTwo: Int
}
