//
//  HexagonB.swift
//  Lepton
//
//  Created by stephen weber on 7/16/22.
//

import SwiftUI

struct HexagonB: View {
    @EnvironmentObject var D : Data
    var body: some View {
        ZStack {
            Image(systemName: "hexagon")
            
                .resizable()
                .frame(width:D.c * 2, height: D.c * 2)
                .foregroundColor(Color.blue.opacity(0.2))
            
        }
    }
}


struct HexagonB_Previews: PreviewProvider {
    static var previews: some View {
        HexagonB()
    }
}
