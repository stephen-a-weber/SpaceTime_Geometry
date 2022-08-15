//
//  DrawLeptonApp.swift
//  DrawLepton
//
//  Created by stephen weber on 7/23/22.
//

import SwiftUI

@main
struct DrawLeptonApp: App {
    @StateObject private var D = Data()
    var body: some Scene {
        WindowGroup {
           // ContentView()
          //  DrawWorkingGraph().environmentObject(D)
           //DrawAllTriplets().environmentObject(D)
            WorkWithStrings().environmentObject(D)
        }
        .commands {
//ToolbarCommands()
            CommandMenu("Custom Menu"){
                Button(action: {
                    D.MagneticDrawColor.toggle()
                },label: {
                    Text("Quark Drawing Color , "+String(D.MagneticDrawColor))
                })
            }
        }
    }
}
