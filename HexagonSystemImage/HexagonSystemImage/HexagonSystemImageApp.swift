//
//  HexagonSystemImageApp.swift
//  HexagonSystemImage
//
//  Created by stephen weber on 5/7/22.
//

import SwiftUI

@main
struct HexagonSystemImageApp: App {
    @StateObject var data = Data()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(data)
        }
        
    }
}
