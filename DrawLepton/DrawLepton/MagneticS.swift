//
//  MagneticS.swift
//  QuarkGrid
//
//  Created by stephen weber on 6/26/22.
//

import SwiftUI

struct MagneticS: View {
    @EnvironmentObject var D : Data
    var body: some View {
        ZStack{
            Image(systemName: "hexagon.fill")
                .resizable()
                .frame(width:D.c * 2,height:D.c * 2)
                 .foregroundColor(D.MagneticDrawColor ? Color.red : Color.white)
             //   .foregroundColor(Color.red)
            
        }
    }
}

struct MagneticS_Previews: PreviewProvider {
    static var previews: some View {
        MagneticS()
    }
}
