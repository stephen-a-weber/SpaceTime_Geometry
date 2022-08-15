//
//  Outline.swift
//  Lepton
//
//  Created by stephen weber on 6/26/22.
//

import SwiftUI

struct Outline: View {
    @EnvironmentObject var D : Data
    var body: some View {
        ZStack{
            
            
            
            
          var t =  Path(){ p in
                
              p.rotation(.degrees(60))
                p.addArc(center:D.unit[4],radius:D.c1 / 2,startAngle: .degrees(60), endAngle: .degrees(240),clockwise:false)
                p.addArc(center:D.unit[6],radius:D.c1 / 2,startAngle: .degrees(60), endAngle: .degrees(300),clockwise:false)
                p.addArc(center:D.unit[3],radius:D.c1 / 2,startAngle: .degrees(120), endAngle: .degrees(0),clockwise:false)
                p.addArc(center:D.unit[2],radius:D.c1 / 2,startAngle: .degrees(180), endAngle: .degrees(60),clockwise:false)
                p.addArc(center:D.unit[5],radius:D.c1 / 2,startAngle: .degrees(240), endAngle: .degrees(0),clockwise:false)
                
                
                p.addArc(center:D.unit[10],radius:D.c1 / 2,startAngle: .degrees(180), endAngle: .degrees(0),clockwise:false)
                p.addArc(center:D.unit[9],radius:D.c1 / 2,startAngle: .degrees(180), endAngle: .degrees(60),clockwise:false)
                p.addArc(center:D.unit[12],radius:D.c1 / 2,startAngle: .degrees(240), endAngle: .degrees(120),clockwise:false)
                
                p.addArc(center:D.unit[8],radius:D.c1 / 2,startAngle: .degrees(300), endAngle: .degrees(180),clockwise:false)
                p.addArc(center:D.unit[11],radius:D.c1 / 2,startAngle: .degrees(0), endAngle: .degrees(120),clockwise:false)
                p.addArc(center:D.unit[19],radius:D.c1 / 2,startAngle: .degrees(300), endAngle: .degrees(120),clockwise:false)
                p.addArc(center:D.unit[15],radius:D.c1 / 2,startAngle: .degrees(300), endAngle: .degrees(180),clockwise:false)
                p.addArc(center:D.unit[18],radius:D.c1 / 2,startAngle: .degrees(0), endAngle: .degrees(240),clockwise:false)
                p.addArc(center:D.unit[20],radius:D.c1 / 2,startAngle: .degrees(60), endAngle: .degrees(300),clockwise:false)
                p.addArc(center:D.unit[17],radius:D.c1 / 2,startAngle: .degrees(120), endAngle: .degrees(240),clockwise:false)
            }
                .stroke(.yellow.opacity(0.5),lineWidth: 4)
            
            
            
            
            t 
              
            
            
        }
        
        
    }
}

struct Outline_Previews: PreviewProvider {
    static var previews: some View {
        Outline()
    }
}
