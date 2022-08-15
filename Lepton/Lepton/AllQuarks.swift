//
//  AllQuarks.swift
//  Lepton
//
//  Created by stephen weber on 7/19/22.
//

import SwiftUI

struct AllQuarks: View {
    
    @EnvironmentObject var D : Data
    let screenSize = NSScreen.main?.frame.size ?? CGSize(width: 800, height: 600)
//    let timer = Timer.publish(every:0.2,on:.main,in:.common).autoconnect()

    
    var body: some View {
         
            ZStack{
                Lepton(n: 0)
                    .offset(x:-600,y:-300)
            
                ForEach(D.location.indices, id: \.self) { A in
                    let x = D.location[A][0]
                    let y = D.location[A][1]
                    let _ = D.registerRAND()
                    var r = Int.random(in: 0...5)
                    if r%2 == 0 {
                    Lepton(n:A)
                     .offset(x: x, y: y)
                    }
                    else {
                        Space(n: A)
                            .offset(x:x, y :y)
                    }
//
                    
                    
                    
                }
                .frame(width: screenSize.width, height: screenSize.height)
                
            }
//             onTapGesture {
//                 
//             }
      
        
    }
}

struct AllQuarks_Previews: PreviewProvider {
    static var previews: some View {
        AllQuarks()
    }
}
