//
//  WebView.swift
//  Swift-RandomPhoto
//
//  Created by Loi Van Tran on 4/5/22.
//

import SwiftUI
import WebKit

struct WebViewww: View {
    @State private var showWebView = false
   private let urlString: String = "https://thuocsi.vn"
    var body: some View {
        VStack(spacing: 40) {
            WebView(url: URL(string: urlString)!)
        }
    }
}

struct WebView: UIViewRepresentable {
    var url: URL
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}

struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebViewww()
    }
}
