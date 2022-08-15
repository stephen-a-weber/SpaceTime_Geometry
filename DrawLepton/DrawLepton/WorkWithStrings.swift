//
//  WorkWithStrings.swift
//  DrawLepton
//
//  Created by stephen weber on 8/1/22.
//

import SwiftUI

struct WorkWithStrings: View {
    @EnvironmentObject var D : Data
    let screenSize = NSScreen.main?.frame.size ?? CGSize(width: 800, height: 600)
    
    var body: some View {
        
            //     TimelineView(.periodic(from: .now, by: 5)) {timeline in
        
        ZStack{
                //            Lepton(n: 55555555)
                //                .offset(x:-600,y:-300)
                //                .onTapGesture {
                //                    D.changeDirection(n: Int.random(in: 0...215))
                //                }
//            ForEach(D.pictureLocations.indices, id: \.self) { A in
//                let x = D.pictureLocations[A][0]
//                let y = D.pictureLocations[A][1]
//                
//                DrawSingleLepton()
//                    .offset(x: x, y: y)
//            }
                ForEach(D.location.indices, id: \.self) { A in
                    let x = D.location[A][0]
                    let y = D.location[A][1]
                    
                    DrawSingleLepton()
                        .offset(x: x, y: y)
                }
                
                
            }
            .frame(width: screenSize.width, height: screenSize.height)
            
                //           }
            
            
            
        }
        
    }
 


struct WorkWithStrings_Previews: PreviewProvider {
    static var previews: some View {
        WorkWithStrings().environmentObject(Data())
        
    }
}
