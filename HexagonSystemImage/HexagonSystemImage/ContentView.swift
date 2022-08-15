    //
    //  ContentView.swift
    //  HexagonSystemImage
    //
    //  Created by stephen weber on 5/7/22.
    //

import SwiftUI

struct ContentView: View {
    var scale : CGFloat =  5
    
        var body: some View {
            GeometryReader { geo in
            Image(systemName: "hexagon")
                    .resizable()
                .foregroundColor(Color.red)
                
                .offset(x:150,y:200)
                .frame(width:geo.size.width/scale,height:geo.size.width/scale)
                Image(systemName: "hexagon")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
