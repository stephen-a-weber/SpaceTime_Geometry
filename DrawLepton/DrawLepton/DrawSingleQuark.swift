//
//  DrawSingleQuark.swift
//  DrawLepton
//
//  Created by stephen weber on 7/26/22.
//

import SwiftUI

struct DrawSingleQuark: View {
    @EnvironmentObject var D : Data
    @State var Which = 7
    var body: some View {
        ZStack {
            
            Hexagon()
                .offset(x:D.quarkX[0], y:D.quarkY[0])
                .foregroundColor(Color.white.opacity(0.3))
            
            
            Hexagon()
                .offset(x:D.quarkX[1], y:D.quarkY[1])
                .foregroundColor(.purple.opacity(0.3))
            
            Hexagon()
                .offset(x:D.quarkX[2], y:D.quarkY[2])
                .foregroundColor(.orange.opacity(0.3))
            
            Hexagon()
                .offset(x:D.quarkX[3], y:D.quarkY[3])
                .foregroundColor(.blue.opacity(0.3))
            Hexagon()
                .offset(x:D.quarkX[4],
                        y:D.quarkY[4])
                .foregroundColor(.purple.opacity(0.3))
            Hexagon()
                .offset(x:D.quarkX[5], y:D.quarkY[5])
                .foregroundColor(.orange.opacity(0.3))
            Hexagon()
                .offset(x:D.quarkX[6], y:D.quarkY[6])
                .foregroundColor(.blue.opacity(0.3))
            
            
            
            
            
            if Which != 7 {
                switch Which {
                case 1:
                    HexagonMiddle()
                        .offset(x:D.quarkX[0], y:D.quarkY[0])
                    
                    MagneticS()
                        .offset(x:D.quarkX[Which], y:D.quarkY[Which])
                        .foregroundColor(.purple.opacity(0.6))
                    MagneticN()
                        .offset(x:D.quarkX[4], y:D.quarkY[4])
                        .foregroundColor(.purple.opacity(0.3))
                case 2:
                    
                    HexagonMiddle()
                        .offset(x:D.quarkX[0], y:D.quarkY[0])
                    MagneticS()
                        .offset(x:D.quarkX[Which], y:D.quarkY[Which])
                    
                    MagneticN()
                        .offset(x:D.quarkX[5], y:D.quarkY[5])
                case 3:
                    
                    HexagonMiddle()
                        .offset(x:D.quarkX[0], y:D.quarkY[0])
                    MagneticS()
                        .offset(x:D.quarkX[Which], y:D.quarkY[Which])
                    
                    MagneticN()
                        .offset(x:D.quarkX[6], y:D.quarkY[6])
                case 4:
                    HexagonMiddle()
                        .offset(x:D.quarkX[0], y:D.quarkY[0])
                    
                    MagneticS()
                        .offset(x:D.quarkX[Which], y:D.quarkY[Which])
                    
                    MagneticN()
                        .offset(x:D.quarkX[(Which+3)%6], y:D.quarkY[(Which+3)%6])
                case 5:
                    HexagonMiddle()
                        .offset(x:D.quarkX[0], y:D.quarkY[0])
                    
                    MagneticS()
                        .offset(x:D.quarkX[Which], y:D.quarkY[Which])
                    
                    MagneticN()
                        .offset(x:D.quarkX[(Which+3)%6], y:D.quarkY[(Which+3)%6])
                case 6:
                    
                    HexagonMiddle()
                        .offset(x:D.quarkX[0], y:D.quarkY[0])
                    MagneticS()
                        .offset(x:D.quarkX[Which], y:D.quarkY[Which])
                    
                    MagneticN()
                        .offset(x:D.quarkX[(Which+3)%6], y:D.quarkY[(Which+3)%6])
                    
                    
                default:
                 
                    Hexagon()
                        .offset(x:D.quarkX[0], y:D.quarkY[0])
                        .foregroundColor(.white)
                            MagneticS()
                                .offset(x:D.quarkX[Which], y:D.quarkY[Which])
                
                            MagneticN()
                                .offset(x:D.quarkX[(Which+3)%6], y:D.quarkY[(Which+3)%6])
                }
            }
           
            
        }
        .rotationEffect(.degrees(60)*D.direction[0])
        .offset(x:D.b * 2,y:D.c + D.a * 2)
        .onTapGesture {
            Which += 1
            if Which > 7 { Which = 1}
        }
        
        
    }
}
struct DrawSingleQuark_Previews: PreviewProvider {
    static var previews: some View {
        DrawSingleQuark().environmentObject(Data())
            .frame(width:500,height:500)
    }
}
