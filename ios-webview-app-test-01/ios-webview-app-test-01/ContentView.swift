//
//  ContentView.swift
//  ios-webview-app-test-01
//
//  Created by hothoony on 1/1/26.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    var url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        
        // safari 웹 인스펙터 디버깅
        webView.isInspectable = true
        
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}

struct ContentView: View {
    
    var body: some View {
        
        // 사이트를 로드한다
        WebView(url: URL(string: "http://192.168.219.111:8443")!)

    }
    
//    var body: some View {
//        
//        VStack {
//            
//            // 웹뷰로 사이트를 로드한다
//            WebView(url: URL(string: "http://192.168.219.115:8443")!)
//            
//            Button("외부 safari 열기 1") {
//                if let url = URL(string: "https://www.apple.com") {
//                    UIApplication.shared.open(url)
//                }
//            }
//            
//            Button("외부 safari 열기 2") {
//                if let url = URL(string: "https://www.icloud.com") {
//                    UIApplication.shared.open(url)
//                }
//            }
//        }
//        
//    }
    
}

#Preview {
    ContentView()
}
