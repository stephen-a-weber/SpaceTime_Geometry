    //
    //  automatic.swift
    //  HexagonSystemImage
    //
    //  Created by stephen weber on 6/4/22.
    //

import SwiftUI

struct automatic: View {
    var c = 10.0
    var a = 10.0/2
    var b = 10.0*sqrt(3)/2
    var direction = [1,2,3]
    var  scale : Double
    var rings = 5
    var ringPivotsX = [Double]()
    var ringPivotsY = [Double]()
    var location = [[Double]]()
    
    
    init(scale: Double, direction : [Int]) {
        c = scale
        a  = scale / 2
        b = scale * sqrt(3) / 2
        self.scale = scale
        self.direction = direction
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
        makeLocation()
    }
    
    mutating  func makeLocation() {
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
     
        
        
        
        var body: some View {
            ZStack{
                    //  Origin(scale: 010, direction: [0,0,0])
                
                ForEach(self.location.indices, id: \.self) { A in
                    let x = location[A][0]
                    let y = location[A][1]
                    Origin(scale: 010, direction: [0,0,0])
                        .offset(x: x, y: y)
                }
                
                    //
                    //            Origin(scale: 010, direction: [3,3,3])
                    //                .offset(x: 3*b,y: -7.5*c)
                    //
                    //            Origin(scale: 010, direction: [3,3,3])
                    //                .offset(x: -6*b,y: -6*c)
                    //
                    //            Origin(scale: 010, direction: [2,3,4])
                    //                .offset(x: -9*b,y:c+a)
                
                    //            Origin(scale: 010, direction: [2,3,4])
                    //                .offset(x: -3*b,y: 7.5*c)
                    //
                    //            Origin(scale: 010, direction: [2,3,4])
                    //                .offset(x: 6*b,y: 6*c)
                    //
            }
            
        }
    }
    
    
    struct automatic_Previews: PreviewProvider {
        static var previews: some View {
            automatic(scale:10,direction:[2,3,4])
        }
    }
    
    
    
