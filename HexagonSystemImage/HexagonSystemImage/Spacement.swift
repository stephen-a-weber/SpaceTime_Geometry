//
//  Spacement.swift
//  HexagonSystemImage
//
//  Created by stephen weber on 5/7/22.
//

import Foundation
import SwiftUI

struct Position:Equatable {
    var x: Double
    var y: Double
    
    
}

struct Put {
    var theScale : Double = 1.0
    var units = [Position]()
    var originQuarkOne : Position
    var originQuarkTwo : Position
    var originQuarkThree : Position
    var quarkOneDX : Double
    var quarkOneDY : Double
    var quarkTwoDX : Double
    var quarkTwoDY : Double
    var quarkThreeDX : Double
    var quarkThreeDY : Double
    
   private var theOrigin = Position(x:0,y:0)
    
    
    func getOrigin()-> Position {
        return theOrigin
    }
    mutating func setOrigin(x: Double,y:Double){
        self.theOrigin = Position(x:x,y:y)
        
    }
    func getScale()-> Double {
        return theScale
    }
    mutating func setScale(at value: Double){
        self.theScale = value
    
    }
    
}
