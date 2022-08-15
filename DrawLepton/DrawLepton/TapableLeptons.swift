//
//  TapableLeptons.swift
//  Lepton
//
//  Created by stephen weber on 7/22/22.
//

import SwiftUI

struct TapableLeptons: View {
    @EnvironmentObject var D : Data
    let screenSize = NSScreen.main?.frame.size ?? CGSize(width: 800, height: 600)
 
    var body: some View {
        
   //     TimelineView(.periodic(from: .now, by: 5)) {timeline in
            
        ZStack{
            Lepton(n: 55555555)
                .offset(x:-600,y:-300)
                .onTapGesture {
                    D.changeDirection(n: Int.random(in: 0...215))
                }
                    ForEach(D.location.indices, id: \.self) { A in
                        let x = D.location[A][0]
                        let y = D.location[A][1]
                         
                        Lepton(n:A)
                            .offset(x: x, y: y)
                            .onTapGesture {
                                D.changeDirection(n: Int.random(in: 0...215))
                                
                            }
                        
                        
                        
                    }
                    .frame(width: screenSize.width, height: screenSize.height)
                    
     //           }
                    
                    
                    
                }
            
        }
        }
 
 

struct TapableLeptons_Previews: PreviewProvider {
    static var previews: some View {
        TapableLeptons().environmentObject(Data())
    }
}
