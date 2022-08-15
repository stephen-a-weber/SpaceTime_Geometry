//
//  ContentView.swift
//  Lepton
//
//  Created by stephen weber on 6/26/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var D : Data
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
