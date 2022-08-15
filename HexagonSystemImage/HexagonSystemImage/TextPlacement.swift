//
//  TextPlacement.swift
//  HexagonSystemImage
//
//  Created by stephen weber on 5/7/22.
//

import Foundation




struct TextPlacement {
    struct Position {
        var x: Double
        var y: Double
    }
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
    var unit = [Position]()
    
    
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
        
        unit.append(Position(x: x ,y: y ))
        unit.append(Position(x: x + a ,y: y + b ))
        unit.append(Position(x: x + a ,y: y - b))
        unit.append(Position(x: x - a  ,y: y - b ))
        unit.append(Position(x: x - a  ,y: y + b ))
        unit.append(Position(x: x + c ,y: y ))
        unit.append(Position(x: x - c   ,y: y ))
        
        unit.append(Position(x: x + dx  ,y: y + dy ))
        unit.append(Position(x: x + dx + a ,y: y + dy + b ))
        unit.append(Position(x: x + dx + a ,y: y + dy - b))
        unit.append(Position(x: x + dx - a  ,y: y + dy - b ))
        unit.append(Position(x: x + dx - a  ,y: y + dy + b ))
        unit.append(Position(x: x + dx + c ,y: y + dy ))
        unit.append(Position(x: x + dx - c   ,y: y + dy ))
        
        unit.append(Position(x: x + ex ,y: y + ey ))
        unit.append(Position(x: x + ex + a ,y: y + ey + b ))
        unit.append(Position(x: x + ex + a ,y: y + ey - b))
        unit.append(Position(x: x + ex - a  ,y: y + ey - b ))
        unit.append(Position(x: x + ex - a  ,y: y + ey + b ))
        unit.append(Position(x: x + ex + c ,y: y + ey ))
        unit.append(Position(x: x + ex - c   ,y: y + ey ))
        
        
        
    }
    
    
    
    
}



    //
    //
    //struct Spacetime : Shape{
    //    func path(in rect:CGRect)-> Path {
    //        var path = Path()
    //        for num in (0..<21) {
    //
    //            let marble = Path() { p in p.addArc(center:mark.unit[num],radius:mark.c / 2,startAngle: .degrees(0.0), endAngle: .degrees(2.0 * Double.pi),clockwise:true)}.stroke(.blue,lineWidth:3)
    //            path.addPath(marble as! Path)
    //
    //
    //
    //        }
    //        return path
    //    }
    //
    //}
    //
    //
