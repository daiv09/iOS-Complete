//
//  ExpTrackApp.swift
//  ExpTrack
//
//  Created by SDC-USER on 28/07/25.
//

import SwiftUI

@main
struct ExpTrackApp: App {
    @StateObject var transListVM = TransListViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(transListVM)
        }
    }
}
