    //
    //  Data.swift
    //  QuarkGrid
    //
    //  Created by stephen weber on 6/24/22.
    //

import Foundation
class Data: ObservableObject {
    @Published var rings = 2
    @Published  var direction =
    [0.0,3.0,0.0]
  //  [4.0,6.0,3.0] one et two
        //[2.0,4.0,1.0]// two et one
   // [2.0,1.0,1.0] they all are the same
    @Published var scale = 10.0
      var a = 5.0
     var b = 10.0 * sqrt(3) / 2
      var c = 10.0
    @Published var ringPivotsX = [Double]()
    @Published var ringPivotsY = [Double]()
    @Published var location = [[Double]]()
    @Published var quarkX = [Double]()
    @Published var quarkY = [Double]()
    @Published var magneticNX = 0.0
    @Published var magneticNY = 0.0
    @Published var magneticSX = 0.0
    @Published var magneticSY = 0.0
    @Published var unit = [CGPoint]()
  @Published var whichRing = [0]
    @Published var frog = 0
      var x =  0.0
     var y =  0.0
    var dx =  0.0
    var dy =  0.0
    var ex =  0.0
    var ey =  0.0
    var Ax =  0.0
    var Ay =  0.0
    var Bx =  0.0
    var By =  0.0
    var Cx =  0.0
   var Cy =  0.0
     var a1 = 0.0
    var b1 = 0.0
    var c1 = 0.0
    let radius = 18.0
    var ACount = 0
    var Count = 0
    @Published    var allDirections = [[Double]]()
    func changeDirection(n: Int) {
        self.direction = self.allDirections[n]
        print("Creating ", n)
    }
    
    
    
    init() {
        
        for a in 1...6 {
            for b in 1...6 {
                for c in 1...6 {
                    let f = [Double(a),Double(b),Double(c)]
                    allDirections.append(f)
                    ACount += 1
                }
            }
        }
        
        
        
        
        a  = scale / 2
        b = scale * sqrt(3) / 2
        
      //  self.direction = [1,2,3]
        ringPivotsX.append(9*b)
        ringPivotsX.append(3*b)
        ringPivotsX.append(-6*b)
        ringPivotsX.append(-9*b)
        ringPivotsX.append(-3*b)
        ringPivotsX.append(6*b)
        
        ringPivotsY.append(-1.5*c)
        ringPivotsY.append(-7.5*c)
        ringPivotsY.append(-6*c)
        ringPivotsY.append(1.5*c)
        ringPivotsY.append(7.5*c)
        ringPivotsY.append(6*c)
        quarkX.append(0)
        quarkY.append(0)
        
        quarkX.append(b)
        quarkY.append(c+a)
        
        quarkX.append(-b)
        quarkY.append(c+a)
        
        quarkX.append(-2*b)
        quarkY.append(0)
        
        quarkX.append(-b)
        quarkY.append(-c-a)
        
        quarkX.append(b)
        quarkY.append(-c-a)
        
        quarkX.append(2*b)
        quarkY.append(0)

        magneticNX = b
        magneticNY = c+a
        magneticSX = -b
         magneticSY = -c-a
        
        self.c1 = radius
        self.a1 = self.c1 / 2
        self.b1 = sqrt(3) * self.c1 / 2
        self.dx = a1 + c1 + c1
        self.dy = b1
        self.ex = a1
        self.ey = b1 + b1 + b1
        
        self.Ax = a1 + c1 + c1 + a1
        self.Ay = b1 + b1 + b1 + b1
        
        self.Bx =  -a1 - c1 - c1 - a1 - a1 - c1
        self.By = b1
        
        self.Cx = -a1 - a1 - a1
        self.Cy = b1 + b1 + b1 + b1 + b1
        unit.append(CGPoint(x: x ,y: y ))
        unit.append(CGPoint(x: x + a1 ,y: y + b1 ))
        unit.append(CGPoint(x: x + a1 ,y: y - b1))
        unit.append(CGPoint(x: x - a1  ,y: y - b1 ))
        unit.append(CGPoint(x: x - a1  ,y: y + b1 ))
        unit.append(CGPoint(x: x + c1 ,y: y ))
        unit.append(CGPoint(x: x - c1   ,y: y ))
        
        unit.append(CGPoint(x: x + dx  ,y: y + dy ))
        unit.append(CGPoint(x: x + dx + a1 ,y: y + dy + b1 ))
        unit.append(CGPoint(x: x + dx + a1 ,y: y + dy - b1))
        unit.append(CGPoint(x: x + dx - a1  ,y: y + dy - b1 ))
        unit.append(CGPoint(x: x + dx - a1  ,y: y + dy + b1 ))
        unit.append(CGPoint(x: x + dx + c1 ,y: y + dy ))
        unit.append(CGPoint(x: x + dx - c1   ,y: y + dy ))
        
        unit.append(CGPoint(x: x + ex ,y: y + ey ))
        unit.append(CGPoint(x: x + ex + a1 ,y: y + ey + b1 ))
        unit.append(CGPoint(x: x + ex + a1 ,y: y + ey - b1))
        unit.append(CGPoint(x: x + ex - a1  ,y: y + ey - b1 ))
        unit.append(CGPoint(x: x + ex - a1  ,y: y + ey + b1 ))
        unit.append(CGPoint(x: x + ex + c1 ,y: y + ey ))
        unit.append(CGPoint(x: x + ex - c1   ,y: y + ey ))
        makeLocation()
       
    }
    
    func makeLocation() {
        var count = 1
        var Px =  0.0
        var Py =  0.0
        
        
        location.append([Px,Py])
        
        for Q in 0..<rings {
             
            Px -= ringPivotsX[1]
            Py -= ringPivotsY[1]
            
            
            
            for _ in 0..<count {
                Px += ringPivotsX[0]
                Py += ringPivotsY[0]
                location.append([Px,Py])
            }
            for _ in 0..<count {
                Px += ringPivotsX[1]
                Py += ringPivotsY[1]
                location.append([Px,Py])
               
            }
            for _ in 0..<count {
                Px += ringPivotsX[2]
                Py += ringPivotsY[2]
                location.append([Px,Py])
            }
            for _ in 0..<count {
                Px += ringPivotsX[3]
                Py += ringPivotsY[3]
                location.append([Px,Py])
            }
            for _ in 0..<count {
                Px += ringPivotsX[4]
                Py += ringPivotsY[4]
                location.append([Px,Py])
            }
            for _ in 0..<count {
                Px += ringPivotsX[5]
                Py += ringPivotsY[5]
                location.append([Px,Py])
            }
                //            Px += ringPivotsX[4]
                //            Py += ringPivotsY[4]
            count += 1
            
        }
        
        print("location number is ",location.count)
        print(location)
        
    }
    func register() {
       
     //   self.direction =     [Double(Int.random(in:0...6)),Double(Int.random(in:0...6)),Double(Int.random(in:0...6))]
        if Count == ACount {Count = 0}
        self.direction = allDirections[Count]
        Count += 1
    }
    func registerRAND() {
        
             self.direction =     [Double(Int.random(in:0...6)),Double(Int.random(in:0...6)),Double(Int.random(in:0...6))]
      
    }
    
    func whichR(n: Int) {
        
    }
}
