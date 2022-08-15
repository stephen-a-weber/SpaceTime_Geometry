//
//  Element.swift
//  HexagonSystemImage
//
//  Created by stephen weber on 5/7/22.
//

import SwiftUI

struct Element: View {
    var c = 10.0
    var a = 10.0/2
    var b = 10.0*sqrt(3)/2
    var direction = [1,2,3]
    var  scale : Double
    init(scale: Double, direction : [Int]) {
        c = scale
        a  = scale / 2
        b = scale * sqrt(3) / 2
        self.scale = scale
        self.direction = direction
        
    }
    
    
    
    var body: some View {
        ZStack {
            Group {
                Origin(scale: 010, direction: [0,0,0])
                  
                    
           
           Origin(scale: 010, direction: [0,0,0])
                .offset(x: 9*b,y:-c-a)
                 
         
             
                Origin(scale: 010, direction: [3,3,3])
                    .offset(x: 3*b,y: -7.5*c)
               
                Origin(scale: 010, direction: [3,3,3])
                    .offset(x: -6*b,y: -6*c)
                
                
                
            Origin(scale: 010, direction: [2,3,4])
                .offset(x: -9*b,y:c+a)
            
                Origin(scale: 010, direction: [2,3,4])
                    .offset(x: -3*b,y: 7.5*c)
                
            Origin(scale: 010, direction: [2,3,4])
                .offset(x: 6*b,y: 6*c)
          
            
        
            }
            Group {
                Origin(scale: 010, direction: [2,3,4])
                    .offset(x:18*b,y:-3*c)
                
                Origin(scale: 010, direction: [2,3,4])
                    .offset(x:12*b,y:-9*c)
                
                Origin(scale: 010, direction: [2,3,4])
                    .offset(x: 6*b,y: -15*c)
            }
            Group {
                Origin(scale: 010, direction: [2,3,4])
                    .offset(x:-3*b,y:-13.5*c)
                
                Origin(scale: 010, direction: [2,3,4])
                    .offset(x:-12*b,y:-12*c)
            }
            Group{
                Origin(scale: 010, direction: [2,3,4])
                    .offset(x: -15*b,y: -4.5*c)
           
                Origin(scale: 010, direction: [2,3,4])
                    .offset(x: -18*b,y: 3*c)
                
            
            }
            Group{
                Origin(scale: 010, direction: [2,3,4])
                    .offset(x: -12*b,y: 9*c)
                
                Origin(scale: 010, direction: [2,3,4])
                    .offset(x: -6*b,y: 15*c)
             
                Origin(scale: 010, direction: [2,3,4])
                    .offset(x: 3*b,y: 13.5*c)
             
                Origin(scale: 010, direction: [2,3,4])
                    .offset(x: 12*b,y: 12*c)

                Origin(scale: 010, direction: [2,3,4])
                    .offset(x: 15*b,y: 4.5*c)
                
            }
        }
    }
}

struct Element_Previews: PreviewProvider {
    static var previews: some View {
        Element(scale:10,direction:[2,3,4])
    }
}
