//
//  HexagonMiddle.swift
//  DrawLepton
//
//  Created by stephen weber on 7/26/22.
//

import SwiftUI

struct HexagonMiddle: View {
    @EnvironmentObject var D : Data
    var body: some View {
        ZStack {
            Image(systemName: "hexagon.fill")
            
                .resizable()
                .frame(width:D.c * 2, height: D.c * 2)
                .foregroundColor(Color.white)
            
        }
    }
}

struct HexagonMiddle_Previews: PreviewProvider {
    static var previews: some View {
        HexagonMiddle()
    }
}
