//
//  ContentView.swift
//  Swift-RandomPhoto
//
//  Created by Loi Van Tran on 4/3/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ModelData())
    }
}
