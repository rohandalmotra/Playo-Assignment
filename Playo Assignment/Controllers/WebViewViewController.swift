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

    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL (string: urlForWebView)
                let request = URLRequest(url: url!)
                webView.load(request)
       
    }
    

   
}
