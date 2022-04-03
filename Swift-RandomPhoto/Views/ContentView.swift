//
//  ContentView.swift
//  Swift-RandomPhoto
//
//  Created by Loi Van Tran on 4/3/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack  {
            MapView().frame(height: 300).ignoresSafeArea(edges: .top)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .foregroundColor(Color.green)
                    .font(.title)
                
                HStack {
                    Text("Joshua Tree National Park").font(.subheadline)
                    Spacer()
                    Text("California")
                }
                Divider()
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }.padding()
            Spacer()

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
