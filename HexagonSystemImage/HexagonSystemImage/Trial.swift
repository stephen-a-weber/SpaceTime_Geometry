    //
    //  Trial.swift
    //  HexagonSystemImage
    //
    //  Created by stephen weber on 5/7/22.
    //
/*
 
 
 
 
 self.c = radius
 self.a = self.c / 2
 self.b = sqrt(3) * self.c / 2
 unit.append(CGPoint(x: x ,y: y ))
 unit.append(CGPoint(x: x + a ,y: y + b ))
 unit.append(CGPoint(x: x + a ,y: y - b))
 unit.append(CGPoint(x: x - a  ,y: y - b ))
 unit.append(CGPoint(x: x - a  ,y: y + b ))
 unit.append(CGPoint(x: x + c ,y: y ))
 unit.append(CGPoint(x: x - c   ,y: y ))
 */
import SwiftUI

struct Trial: View {
    var E: Double
    var F: Double
    var c : Double
    var a : Double
    var b : Double
    var hex : Hex
    var hexIn : HexIn
    var hexOut : HexOut
    var choice: Int
    init(scale: Double, choice: Int){
        c = scale
        a  =   scale/2.0
        b = sqrt(3)*scale/2.0
        E = 2*b
        F = c + 2*a
        hex = Hex(c:scale)
        hexIn = HexIn(c:scale)
        hexOut = HexOut(c:scale)
        self.choice = choice
    }
    var body: some View {
        ZStack{
                //  Image(systemName: "hexagon")
            Group{
            Group{
                hex
                hexIn
                
                    .offset(x:b,y:c+a)
                
                hex
                    .offset(x:b,y:c+a)
                
                
                
                hex
                    .offset(x:-b,y:c+a)
                
                
                
                hex
                    .offset(x:-2*b,y:0)
                
                hexOut
                    .offset(x:-b,y:-c-a)
                
                hex
                    .offset(x:-b,y:-c-a)
                
                
                hex
                    .offset(x:b,y:-c-a)
                
                hex
                    .offset(x:2*b,y:0)
                
                
                
                
                
                
            }
            .rotationEffect(.degrees(60*Double(choice)))
        }
        .offset(x:E,y:F)
       // .rotationEffect(.degrees(60))
   //   Circle()
    //      .frame(width:5,height:5)
        }
        
    }
    
    
}

struct Trial_Previews: PreviewProvider {
    static var previews: some View {
        Trial(scale:20.0,choice: 1)
    }
    
}
struct Hex :  View {
    var c : Double
    init(c: Double) {
        self.c = c*2.0
    }
    var body : some View {
        ZStack{
            Image(systemName: "hexagon")
                .resizable()
                .frame(width:c,height:c)
                .foregroundColor(Color.blue)
            
            
        }
    }
}
struct HexIn :  View {
    var c : Double
    init(c: Double) {
        self.c = c*2.0
    }
    var body : some View {
        ZStack{
            Image(systemName: "hexagon.fill")
                .resizable()
                .frame(width:c,height:c)
                .foregroundColor(Color.red)
            
            
        }
    }
}

struct HexOut :  View {
    var c : Double
    init(c: Double) {
        self.c = c*2.0
    }
    var body : some View {
        ZStack{
            Image(systemName: "hexagon.fill")
                .resizable()
                .frame(width:c,height:c)
                .foregroundColor(Color.green)
            
            
        }
    }
}
