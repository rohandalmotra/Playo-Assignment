//
//  WebViewViewController.swift
//  Playo Assignment
//
//  Created by Rohan Dalmotra on 19/08/22.
//

import UIKit
import WebKit

class WebViewViewController: UIViewController, WKUIDelegate{

    @IBOutlet weak var loader: UIActivityIndicatorView!
    var url: String = ""
    var webView: WKWebView!
    override func loadView() {
            let webConfiguration = WKWebViewConfiguration()
            webView = WKWebView(frame: .zero, configuration: webConfiguration)
            webView.uiDelegate = self
            view = webView
        }
        override func viewDidLoad() {
            super.viewDidLoad()
            
            let myURL = URL(string:"https://www.apple.com")
            let myRequest = URLRequest(url: myURL!)
            webView.load(myRequest)
        }}
