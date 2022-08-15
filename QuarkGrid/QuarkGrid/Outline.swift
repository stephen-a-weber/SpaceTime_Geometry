//
//  Outline.swift
//  QuarkGrid
//
//  Created by stephen weber on 6/13/22.
//

    //
    //  ContentView.swift
    //  ANIMATIONPRACTICE
    //
    //  Created by stephen weber on 3/25/22.
    //




import SwiftUI





struct Outline: View {
    @Binding  var mark :placement//= placement(x:140 , y:200,radius:40)
                                 // var cars = Path()
    
    var body: some View {
        ZStack{
            
            
            
            
            Path(){ p in
                
                    //p.move(to:mark.unit[0])
                    //                p.addArc(center:mark.unit[1],radius:mark.c / 2,startAngle: .degrees(0), endAngle: .degrees(180),clockwise:false)
                p.addArc(center:mark.unit[4],radius:mark.c / 2,startAngle: .degrees(60), endAngle: .degrees(240),clockwise:false)
                p.addArc(center:mark.unit[6],radius:mark.c / 2,startAngle: .degrees(60), endAngle: .degrees(300),clockwise:false)
                p.addArc(center:mark.unit[3],radius:mark.c / 2,startAngle: .degrees(120), endAngle: .degrees(0),clockwise:false)
                p.addArc(center:mark.unit[2],radius:mark.c / 2,startAngle: .degrees(180), endAngle: .degrees(60),clockwise:false)
                p.addArc(center:mark.unit[5],radius:mark.c / 2,startAngle: .degrees(240), endAngle: .degrees(0),clockwise:false)
                
                
                p.addArc(center:mark.unit[10],radius:mark.c / 2,startAngle: .degrees(180), endAngle: .degrees(0),clockwise:false)
                p.addArc(center:mark.unit[9],radius:mark.c / 2,startAngle: .degrees(180), endAngle: .degrees(60),clockwise:false)
                p.addArc(center:mark.unit[12],radius:mark.c / 2,startAngle: .degrees(240), endAngle: .degrees(120),clockwise:false)
                
                p.addArc(center:mark.unit[8],radius:mark.c / 2,startAngle: .degrees(300), endAngle: .degrees(180),clockwise:false)
                p.addArc(center:mark.unit[11],radius:mark.c / 2,startAngle: .degrees(0), endAngle: .degrees(120),clockwise:false)
                    //                p.addArc(center:mark.unit[13],radius:mark.c / 2,startAngle: .degrees(60), endAngle: .degrees(300),clockwise:false)
                p.addArc(center:mark.unit[19],radius:mark.c / 2,startAngle: .degrees(300), endAngle: .degrees(120),clockwise:false)
                p.addArc(center:mark.unit[15],radius:mark.c / 2,startAngle: .degrees(300), endAngle: .degrees(180),clockwise:false)
                p.addArc(center:mark.unit[18],radius:mark.c / 2,startAngle: .degrees(0), endAngle: .degrees(240),clockwise:false)
                p.addArc(center:mark.unit[20],radius:mark.c / 2,startAngle: .degrees(60), endAngle: .degrees(300),clockwise:false)
                p.addArc(center:mark.unit[17],radius:mark.c / 2,startAngle: .degrees(120), endAngle: .degrees(240),clockwise:false)
                   
                
            }
            .stroke(.blue,lineWidth: 4)
            
            
            
             
        
        }
        
        
        
    }
    
}

struct Outline_Previews: PreviewProvider {
   
    
    static var previews: some View {
        Outline(mark: .constant(placement(x:100,y:100,radius:20)))
    }
}
