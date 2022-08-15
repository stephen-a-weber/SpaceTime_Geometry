//
//  EmptySpace.swift
//  QuarkGrid
//
//  Created by stephen weber on 6/26/22.
//

import SwiftUI

struct EmptySpace: View {
    var D = Data()
    var body: some View {
        ZStack {
            Hexagon()
                .offset(x:D.quarkX[0], y:D.quarkY[0])
            Hexagon()
                .offset(x:D.quarkX[1], y:D.quarkY[1])
            
            Hexagon()
                .offset(x:D.quarkX[2], y:D.quarkY[2])
            Hexagon()
                .offset(x:D.quarkX[3], y:D.quarkY[3])
            
            Hexagon()
                .offset(x:D.quarkX[4], y:D.quarkY[4])
            Hexagon()
                .offset(x:D.quarkX[5], y:D.quarkY[5])
            Hexagon()
                .offset(x:D.quarkX[6], y:D.quarkY[6])
            
            
            
        }
    }
}

struct EmptySpace_Previews: PreviewProvider {
    static var previews: some View {
        EmptySpace()
    }
}
