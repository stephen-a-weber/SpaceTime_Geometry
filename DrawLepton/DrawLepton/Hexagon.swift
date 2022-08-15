//
//  Hexagon.swift
//  QuarkGrid
//
//  Created by stephen weber on 6/26/22.
//

import SwiftUI

struct Hexagon: View {
    @EnvironmentObject var D : Data
    var body: some View {
        ZStack {
            Image(systemName: "hexagon.fill")
                
                .resizable()
                .frame(width: D.c * 2, height:  D.c * 2)
            //   .foregroundColor(Color.blue)
               
        }
    }
}

struct Hexagon_Previews: PreviewProvider {
    static var previews: some View {
        Hexagon()
    }
}
