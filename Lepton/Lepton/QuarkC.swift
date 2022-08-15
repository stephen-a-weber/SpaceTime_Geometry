//
//  QuarkC.swift
//  Lepton
//
//  Created by stephen weber on 7/2/22.
//

import SwiftUI

struct QuarkC: View {
    @EnvironmentObject var D : Data
    var body: some View {
        ZStack {
            MagneticS()
                .offset(x:D.magneticSX, y:D.magneticSY)
            MagneticN()
                .offset(x:D.magneticNX, y:D.magneticNY)
            
            HexagonC()
                .offset(x:D.quarkX[0], y:D.quarkY[0])
            HexagonC()
                .offset(x:D.quarkX[1], y:D.quarkY[1])
            
            HexagonC()
                .offset(x:D.quarkX[2], y:D.quarkY[2])
            HexagonC()
                .offset(x:D.quarkX[3], y:D.quarkY[3])
            
            HexagonC()
                .offset(x:D.quarkX[4],
                        y:D.quarkY[4])
            HexagonC()
                .offset(x:D.quarkX[5], y:D.quarkY[5])
            HexagonC()
                .offset(x:D.quarkX[6], y:D.quarkY[6])
            
        }
       // .rotationEffect(.degrees(60)*Double.random(in:0...6))
         .rotationEffect(.degrees(60)*D.direction[2])
        .offset(x:D.b * 2,y:D.c + D.a * 2)
        
        
    }
}


struct QuarkC_Previews: PreviewProvider {
    static var previews: some View {
        QuarkC().environmentObject(Data())
            .frame(width:200,height:200)
    }
}
