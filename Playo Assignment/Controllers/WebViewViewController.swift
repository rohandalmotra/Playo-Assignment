//
//  WebViewViewController.swift
//  Playo Assignment
//
//  Created by Rohan Dalmotra on 19/08/22.
//

import UIKit
import WebKit

class WebViewViewController: UIViewController {
    var urlForWebView = ""
    @IBOutlet weak var loader: UIActivityIndicatorView!
    
    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
       let safeString = urlForWebView
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                webView.load(request)
            }
        
//        guard let url = URL (string: urlForWebView) else { return
//
//        }
//               print(urlForWebView)
//        DispatchQueue.main.async {
//            self.webView.load(URLRequest(url: url))
//        }
    }
       
}
