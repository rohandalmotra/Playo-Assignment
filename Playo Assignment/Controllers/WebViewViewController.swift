//
//  WebViewViewController.swift
//  Playo Assignment
//
//  Created by Rohan Dalmotra on 19/08/22.
//

import UIKit
import WebKit

class WebViewViewController: UIViewController, WKUIDelegate{

    private let url: URL
    init(url: URL) {
        self.url = url
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    var webView: WKWebView!
    override func loadView() {
            let webConfiguration = WKWebViewConfiguration()
            webView = WKWebView(frame: .zero, configuration: webConfiguration)
            webView.uiDelegate = self
            view = webView
        view.backgroundColor = .systemBackground
        addButtonToNav()
        }
        override func viewDidLoad() {
            super.viewDidLoad()
           
            let myRequest = URLRequest(url: url)
            webView.load(myRequest)
        }
    
    func addButtonToNav(){
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(didTapeDone))
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .refresh, target: self, action: #selector(didTapRefresh))
        
    }
    
    @objc func didTapeDone(){
        dismiss(animated: true)
    }
    
    @objc func didTapRefresh() {
        webView.load(URLRequest(url: url))
        
    }
}
