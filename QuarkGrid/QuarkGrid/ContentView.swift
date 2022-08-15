//
//  ContentView.swift
//  QuarkGrid
//
//  Created by stephen weber on 6/13/22.
//

import SwiftUI

struct ContentView: View {
    @State private var PPP = placement(x:150 , y:200,radius:20)
    var body: some View {
        ZStack {
        Image("quark")
            .resizable()
            .aspectRatio(contentMode: .fit)
           
                    Outline(mark: $PPP)
                .offset(x: 600, y: 400)
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
