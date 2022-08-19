//
//  WebViewViewController.swift
//  Playo Assignment
//
//  Created by Rohan Dalmotra on 19/08/22.
//

import UIKit
import WebKit

class WebViewViewController: UIViewController{
    @IBOutlet weak var webViewer: WKWebView!
    @IBOutlet weak var loader: UIActivityIndicatorView!
   
    private let urlForWebView: URL
    init(urlForWebView: URL){
        self.urlForWebView = urlForWebView
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(urlForWebView)
//        let url = URL(string: urlForWebView)
        let request = URLRequest(url: urlForWebView)
        self.webViewer.load(request)

    }
  
}


//        print(urlForWebView)
//        guard let safeString = urlForWebView else { return
//
//        }
//             if let url = URL(string: safeString){
//                 let request = URLRequest(url: url)
//                 self.webView.load(request)
//                 webView.addObserver(self, forKeyPath: #keyPath(WKWebView.isLoading), context: nil)
//             }
        
//        override func viewWillAppear(_ animated: Bool) {
//            if let url = URL(string: urlForWebView!){
//                let request = URLRequest(url: url)
//               webView.load(request)
//            }
//           }

        // Do any additional setup after loading the view.

    
//    override class func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
//        if keyPath == "loading"{
//            if webView.isLoading{
//              loader.startAnimating()
//            }
//        }
//    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
//}
