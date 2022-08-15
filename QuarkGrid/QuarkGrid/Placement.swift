//
//  Placement.swift
//  QuarkGrid
//
//  Created by stephen weber on 6/13/22.
//
//
//  UnitSpacement.swift
//  ANIMATIONPRACTICE
//
//  Created by stephen weber on 3/25/22.
//

import Foundation
import CoreGraphics


struct placement: Identifiable {
    let id =  UUID()
    let x : Double
    let y: Double
    let a : Double
    let b : Double
    let c : Double
    let dx : Double
    let dy : Double
    let ex : Double
    let ey : Double
    let Ax: Double
    let Ay: Double
    let Bx : Double
    let By: Double
    let Cx: Double
    let Cy: Double
    var unit = [CGPoint]()
    
    init(x: Double, y: Double,radius: Double) {
        self.x = x
        self.y = y
        
        
        self.c = radius
        self.a = self.c / 2
        self.b = sqrt(3) * self.c / 2
        self.dx = a + c + c
        self.dy = b
        self.ex = a
        self.ey = b + b + b
        
        self.Ax = a + c + c + a
        self.Ay = b + b + b + b
        
        self.Bx =  -a - c - c - a - a - c
        self.By = b
        
        self.Cx = -a - a - a
        self.Cy = b + b + b + b + b
        
        unit.append(CGPoint(x: x ,y: y ))
        unit.append(CGPoint(x: x + a ,y: y + b ))
        unit.append(CGPoint(x: x + a ,y: y - b))
        unit.append(CGPoint(x: x - a  ,y: y - b ))
        unit.append(CGPoint(x: x - a  ,y: y + b ))
        unit.append(CGPoint(x: x + c ,y: y ))
        unit.append(CGPoint(x: x - c   ,y: y ))
        
        unit.append(CGPoint(x: x + dx  ,y: y + dy ))
        unit.append(CGPoint(x: x + dx + a ,y: y + dy + b ))
        unit.append(CGPoint(x: x + dx + a ,y: y + dy - b))
        unit.append(CGPoint(x: x + dx - a  ,y: y + dy - b ))
        unit.append(CGPoint(x: x + dx - a  ,y: y + dy + b ))
        unit.append(CGPoint(x: x + dx + c ,y: y + dy ))
        unit.append(CGPoint(x: x + dx - c   ,y: y + dy ))
        
        unit.append(CGPoint(x: x + ex ,y: y + ey ))
        unit.append(CGPoint(x: x + ex + a ,y: y + ey + b ))
        unit.append(CGPoint(x: x + ex + a ,y: y + ey - b))
        unit.append(CGPoint(x: x + ex - a  ,y: y + ey - b ))
        unit.append(CGPoint(x: x + ex - a  ,y: y + ey + b ))
        unit.append(CGPoint(x: x + ex + c ,y: y + ey ))
        unit.append(CGPoint(x: x + ex - c   ,y: y + ey ))
        
        
        
    }
    
    
    
    
}


 
