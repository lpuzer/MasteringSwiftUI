//
//  MasteringSwiftUIApp.swift
//  MasteringSwiftUI
//
//  Created by Luciano Puzer on 23/11/21.
//

import SwiftUI

@main
struct MasteringSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            PageController()
                .environmentObject(ViewRouter())
        }
    }
}
