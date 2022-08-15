//
//  HexagonC.swift
//  Lepton
//
//  Created by stephen weber on 7/16/22.
//

import SwiftUI

struct HexagonC: View {
    @EnvironmentObject var D : Data
    var body: some View {
        ZStack {
            Image(systemName: "hexagon")
            
                .resizable()
                .frame(width:D.c * 2, height: D.c * 2)
                .foregroundColor(Color.orange.opacity(0.2))
            
        }
    }
}


struct HexagonC_Previews: PreviewProvider {
    static var previews: some View {
        HexagonC()
    }
}
