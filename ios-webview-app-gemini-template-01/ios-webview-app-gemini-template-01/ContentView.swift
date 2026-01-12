//
//  ContentView.swift
//  ios-webview-app-gemini-template-01
//
//  Created by hothoony on 12/29/25.
//

import SwiftUI
import WebKit

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

struct ContentView: View {
    var body: some View {
        WebView(url: URL(string: "http://192.168.219.115:8443")!)
    }
}

#Preview {
    ContentView()
}
