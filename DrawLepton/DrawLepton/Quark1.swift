//
//  Quark1.swift
//  Lepton
//
//  Created by stephen weber on 7/19/22.
//

import SwiftUI

struct Quark1: View {
    @EnvironmentObject var D : Data
    var body: some View {
        ZStack {
//            MagneticS()
//                .offset(x:D.magneticSX, y:D.magneticSY)
//            MagneticN()
//                .offset(x:D.magneticNX, y:D.magneticNY)
            
            HexagonA()
                .offset(x:D.quarkX[0], y:D.quarkY[0])
            HexagonA()
                .offset(x:D.quarkX[1], y:D.quarkY[1])
            
            HexagonA()
                .offset(x:D.quarkX[2], y:D.quarkY[2])
            HexagonA()
                .offset(x:D.quarkX[3], y:D.quarkY[3])
            
            HexagonA()
                .offset(x:D.quarkX[4],
                        y:D.quarkY[4])
            HexagonA()
                .offset(x:D.quarkX[5], y:D.quarkY[5])
            HexagonA()
                .offset(x:D.quarkX[6], y:D.quarkY[6])
            
        }
        
        .rotationEffect(.degrees(60)*D.direction[0])
            //   .rotationEffect(.degrees(60)*Double.random(in:0...6))
        .offset(x:D.b * 2,y:D.c + D.a * 2)
        
        
    }
}


struct Quark1_Previews: PreviewProvider {
    static var previews: some View {
        Quark1().environmentObject(Data())
            .frame(width:200,height:200)
    }
}
