//
//  Lepton.swift
//  QuarkGrid
//
//  Created by stephen weber on 6/26/22.
//

import SwiftUI

struct Lepton: View {
    var D = Data()
    let screenSize = NSScreen.main?.frame.size ?? CGSize(width: 800, height: 600)
    
    var body: some View {
        ZStack{
            Quark()
            Quark()
                .rotationEffect(.degrees(120))
            Quark()
                .rotationEffect(.degrees(-120))
        }
        .frame(width: screenSize.width, height: screenSize.height)
        
    }
}

struct Lepton_Previews: PreviewProvider {
    static var previews: some View {
        Lepton()
    }
}
