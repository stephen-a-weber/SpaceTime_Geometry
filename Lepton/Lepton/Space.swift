//
//  Space.swift
//  Lepton
//
//  Created by stephen weber on 6/26/22.
//

import SwiftUI

struct Space: View {
             var n:Int
    @EnvironmentObject var D : Data
    let screenSize = NSScreen.main?.frame.size ?? CGSize(width: 800, height: 600)
    init(n:Int) {
        self.n = n
    }
    var body: some View {
        
        ZStack{
            Outline()
            
                .offset(x:1102,y:609)
            Quark1()
                //  .offset(x:   0, y: 0)
                .rotationEffect(.degrees(180))
                //.background(.brown)
                //     .blur(radius:4.0)
                //    .foregroundColor(.green)
            Quark2()
                //  .offset(x:   8.5*D.a, y: -1.5*D.b)
                .rotationEffect(.degrees(60))
            Quark3()
                //   .offset(x: 1.5*D.a, y: -5*D.b)
                .rotationEffect(.degrees(-60))
            
                //               Outline()
                //                .offset(x:1102,y:609)
                //
            
        }
            //  .rotationEffect(.degrees(30))
            // .onAppear{  D.changeDirection(n:n)}
        .frame(width: screenSize.width, height: screenSize.height)
        
    }
}

struct Space_Previews: PreviewProvider {
    static var previews: some View {
        Space(n:2).environmentObject(Data())
    }
}
