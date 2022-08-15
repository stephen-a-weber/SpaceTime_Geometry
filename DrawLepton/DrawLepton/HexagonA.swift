//
//  HexagonA.swift
//  Lepton
//
//  Created by stephen weber on 7/16/22.
//

import SwiftUI

struct HexagonA: View {
    @EnvironmentObject var D : Data
    var body: some View {
        ZStack {
            Image(systemName: "hexagon")
            
                .resizable()
                .frame(width:D.c * 2, height: D.c * 2)
                .foregroundColor( D.whichRing[D.frog]%2==0 ? Color.purple.opacity(0.2):Color.purple.opacity(0.6))
            
        }
    }
}


struct HexagonA_Previews: PreviewProvider {
    static var previews: some View {
        HexagonA()
    }
}
