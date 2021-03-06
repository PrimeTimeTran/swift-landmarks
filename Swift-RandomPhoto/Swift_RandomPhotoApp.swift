//
//  Swift_RandomPhotoApp.swift
//  Swift-RandomPhoto
//
//  Created by Loi Van Tran on 4/3/22.
//

import SwiftUI

@main
struct Swift_RandomPhotoApp: App {
    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(modelData)
        }
    }
}
