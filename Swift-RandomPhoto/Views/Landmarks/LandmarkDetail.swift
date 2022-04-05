//
//  LandmarkDetail.swift
//  Swift-RandomPhoto
//
//  Created by Loi Van Tran on 4/4/22.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark

    var body: some View {
        NavigationView {
            ScrollView {
                MapView(coordinate: landmark.locationCoordinate)
                    .ignoresSafeArea(edges: .top)
                    .frame(height: 300)

                CircleImage(image: landmark.image)
                    .offset(y: -130)
                    .padding(.bottom, -130)

                    NavigationLink(
                        destination: WebViewww(),
                        label: {
                            Text(landmark.name)
                        }
                    )

                VStack(alignment: .leading) {
                    Text(landmark.name)
                        .font(.title)

                    HStack {
                        Text(landmark.park)
                        Spacer()
                        Text(landmark.state)
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)

                    Divider()

                    Text("About \(landmark.name)")
                        .font(.title2)
                    Text(landmark.description)
                }
                .padding()
            }
            .navigationTitle(landmark.name)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: ModelData().landmarks[0])
    }
}
