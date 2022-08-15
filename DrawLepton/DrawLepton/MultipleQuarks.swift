//
//  MultipleQuarks.swift
//  Lepton
//
//  Created by stephen weber on 7/15/22.
//

import SwiftUI

struct MultipleQuarks: View {
    @EnvironmentObject var D : Data
    let screenSize = NSScreen.main?.frame.size ?? CGSize(width: 800, height: 600)
    let timer = Timer.publish(every:0.2,on:.main,in:.common).autoconnect()
    var body: some View {
        TimelineView(.periodic(from: .now, by: 5)) {timeline in
            
            ZStack{
                Lepton(n: 55555555)
                    .offset(x:-600,y:-300)
                    
                        //  Origin(scale: 010, direction: [0,0,0])
           //  var tttt =   D.register()
                
                    ForEach(D.location.indices, id: \.self) { A in
                        let x = D.location[A][0]
                        let y = D.location[A][1]
                        
                        Lepton(n:A)
                            .offset(x: x, y: y)
                        
                        
                    
                    
                }
                .frame(width: screenSize.width, height: screenSize.height)
                 
            }
            .onReceive(timer,perform: {     _ in
                D.register()})
//            .onTapGesture {
//                D.register()
//            }
        
//            .onAppear{D.direction = [Double(Int.random(in:0...6)),Double(Int.random(in:0...6)),Double(Int.random(in:0...6))]
//
//            }
//
            
        }
        
        
        
    }
    }
 

struct MultipleQuarks_Previews: PreviewProvider {
    static var previews: some View {
        MultipleQuarks().environmentObject(Data())
        
    }
}
