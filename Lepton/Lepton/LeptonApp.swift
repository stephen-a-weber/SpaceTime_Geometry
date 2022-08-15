//
//  LeptonApp.swift
//  Lepton
//
//  Created by stephen weber on 6/26/22.
//

import SwiftUI

@main
struct LeptonApp: App {
    @StateObject private var D = Data()
    var body: some Scene {
        WindowGroup {
            //ContentView()
           // Lepton()
       //     MultipleQuarks()    .environmentObject(D)
          AllQuarks().environmentObject(D)
         //   TapableLeptons().environmentObject(D)
        }
    }
}
