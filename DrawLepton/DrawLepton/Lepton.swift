//
//  Lepton.swift
//  QuarkGrid
//
//  Created by stephen weber on 6/26/22.
//

import SwiftUI

struct Lepton: View {
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
            QuarkA()
              //  .offset(x:   0, y: 0)
                 .rotationEffect(.degrees(180))
                //.background(.brown)
           //     .blur(radius:4.0)
            //    .foregroundColor(.green)
            QuarkB()
              //  .offset(x:   8.5*D.a, y: -1.5*D.b)
                 .rotationEffect(.degrees(60))
            QuarkC()
             //   .offset(x: 1.5*D.a, y: -5*D.b)
                 .rotationEffect(.degrees(-60))
           
//               Outline()
//                .offset(x:1102,y:609)
//            
              
        }
      //  .rotationEffect(.degrees(30))
       
        .frame(width: screenSize.width, height: screenSize.height)
         
    }
}

struct Lepton_Previews: PreviewProvider {
    static var previews: some View {
        Lepton(n:2).environmentObject(Data())
    }
}
