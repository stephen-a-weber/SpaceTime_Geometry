//
//  Origin.swift
//  QuarkGrid
//
//  Created by stephen weber on 6/13/22.
//
//
//  Origin.swift
//  HexagonSystemImage
//
//  Created by stephen weber on 5/7/22.
//

import SwiftUI

struct Origin: View {
    var c = 10.0
    var a = 10.0/2
    var b = 10.0*sqrt(3)/2
    var direction = [1,2,3]
    var  scale : Double
    init(scale: Double, direction : [Int]) {
        c = scale
        a  = scale / 2
        b = scale * sqrt(3) / 2
        self.scale = scale
        self.direction = direction
        
    }
    
    
    var body: some View {
        ZStack {
            Trial(scale:scale,choice:direction[0])
            
            Trial(scale:scale,choice:direction[1])
                .rotationEffect(.degrees(120))
                //   .offset(x:-4*b,y:-3*c)
            
            
            Trial(scale:scale,choice:direction[2])
                .rotationEffect(.degrees(-120))
                //    .offset(x:b,y:-5*c+a)
            
        }
        
        .rotationEffect(.degrees( 0))
    }
}

struct Origin_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Origin(scale : 10.0,direction: [0,0,0])
            Origin(scale : 10.0,direction: [0,0,0])
            Origin(scale : 10.0,direction: [0,0,0])
        }
    }
}
