//
//  DrawAllTriplets.swift
//  DrawLepton
//
//  Created by stephen weber on 7/27/22.
//

import SwiftUI

struct DrawAllTriplets: View {
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
            Group{
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.yellow, lineWidth: 5)
                .frame(width:250,height:300)
                .offset(x:-990,y:-25)
            
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.yellow, lineWidth: 5)
                .frame(width:250,height:300)
                .offset(x: 960,y:-330)
            
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.yellow, lineWidth: 5)
                .frame(width:250,height:300)
                .offset(x: 550,y:-325)
            
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.yellow, lineWidth: 5)
                .frame(width:250,height:575)
                .offset(x: -650,y:-325)
            
            
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.yellow, lineWidth: 5)
                .frame(width:250,height:575)
                .offset(x: -650,y:275)
            
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.yellow, lineWidth: 5)
                .frame(width:250,height:575)
                .offset(x: -250,y:-325)
            
            
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.yellow, lineWidth: 5)
                .frame(width:250,height:575)
                .offset(x: -250,y:275)
            
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.yellow, lineWidth: 5)
                .frame(width:250,height:575)
                .offset(x:  150,y:-325)
            
            
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.yellow, lineWidth: 5)
                .frame(width:250,height:575)
                .offset(x:  150,y:275)
            }
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.yellow, lineWidth: 5)
                .frame(width:250,height:575)
                .offset(x:  550,y:275)
            
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.yellow, lineWidth: 5)
                .frame(width:250,height:575)
                .offset(x:  950,y:275)
            
            
            
            ForEach(D.AllLocations.indices, id: \.self) { A in
                let x = D.AllLocations[A][0]
                let y = D.AllLocations[A][1]
                
                DrawSingleLepton()
                    .offset(x: x, y: y)
                
                
                
                
            }
            .frame(width: screenSize.width, height: screenSize.height)
            
                //           }
            
            
            
        }
        
    }
}


struct DrawAllTriplets_Previews: PreviewProvider {
    static var previews: some View {
        DrawAllTriplets().environmentObject(Data())
    }
}
