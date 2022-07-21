//
//  WebView.swift
//  Haxor
//
//  Created by Azzo Hiro on 08/07/22.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WebView.UIViewType {
        return WKWebView()
        
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let requests = URLRequest(url: url)
                uiView.load(requests)
            }
        }
            
        }
    }
   
