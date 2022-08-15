    //
    //  Data.swift
    //  QuarkGrid
    //
    //  Created by stephen weber on 6/24/22.
    //

import Foundation
class Data {
    var rings = 2
    var direction = [3,1,4]
    var scale : Double
    var a = 5.0
    var b = 10.0 * sqrt(3) / 2
    var c = 10.0
    var ringPivotsX = [Double]()
    var ringPivotsY = [Double]()
    var location = [[Double]]()
    var quarkX = [Double]()
    var quarkY = [Double]()
    var magneticNX = 0.0
    var magneticNY = 0.0
    var magneticSX = 0.0
    var magneticSY = 0.0
    
    init() {
        self.scale = 10.0
        a  = scale / 2
        b = scale * sqrt(3) / 2
        
        self.direction = [3,1,4]
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
        
        
        makeLocation()
        makeLocation()
    }
    
    func makeLocation() {
        var count = 1
        var Px = 0.0
        var Py = 0.0
        
        
        location.append([Px,Py])
        
        for _ in 0..<rings {
            
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
    }
}
