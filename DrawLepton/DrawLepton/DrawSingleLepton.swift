//
//  DrawSingleLepton.swift
//  DrawLepton
//
//  Created by stephen weber on 7/26/22.
//

import SwiftUI

struct DrawSingleLepton: View {
    
    @EnvironmentObject var D : Data
    let screenSize = NSScreen.main?.frame.size ?? CGSize(width: 800, height: 600)
    
    var body: some View {
        
        ZStack{
            
             
            DrawSingleQuark()
                //  .offset(x:   0, y: 0)
                .rotationEffect(.degrees(180))
                //.background(.brown)
                //     .blur(radius:4.0)
                //    .foregroundColor(.green)
            DrawSingleQuark()
                //  .offset(x:   8.5*D.a, y: -1.5*D.b)
                .rotationEffect(.degrees(60))
            DrawSingleQuark()
                //   .offset(x: 1.5*D.a, y: -5*D.b)
                .rotationEffect(.degrees(-60))
            
                //               Outline()
                //                .offset(x:1102,y:609)
                //
//            Outline()
//            
//                .offset(x:1102,y:609)
        }
            //  .rotationEffect(.degrees(30))
        
        .frame(width: screenSize.width, height: screenSize.height)
        
    }
}
struct DrawSingleLepton_Previews: PreviewProvider {
    static var previews: some View {
        DrawSingleLepton().environmentObject(Data())
    }
}
