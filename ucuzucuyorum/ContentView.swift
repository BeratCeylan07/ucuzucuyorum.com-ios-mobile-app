//
//  ContentView.swift
//  ucuzucuyorum
//
//  Copyright © 2020 JSON YAZILIM. All rights reserved.
//
import SwiftUI

struct ContentView: View {
    
    @ObservedObject var webViewStore = WebViewStore()
    
    var body: some View {
        ZStack {
            Color.init("backGround").edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            WebView(webView: webViewStore.webView)
            
        }.onAppear {
            self.webViewStore.webView.load(URLRequest(url: URL(string: "https://ucuzucuyorum.com")!))
        }
    }
}
