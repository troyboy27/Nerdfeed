//
//  WebViewController.swift
//  Nerdfeed
//
//  Created by Troy Abel on 10/23/14.
//  Copyright (c) 2014 Troy Abel. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController {
     var webView: WKWebView!
    var URL: NSURL?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webView = WKWebView(frame: view.bounds)
        webView.setTranslatesAutoresizingMaskIntoConstraints(false)
        view.addSubview(webView)
        // Setup web view constraints
        var formatString = "H:|[webView]|"
        var constraints = NSLayoutConstraint.constraintsWithVisualFormat(formatString,
        options: nil,
        metrics: nil,
        views: ["webView": webView])
        view.addConstraints(constraints)
        formatString = "V:|[webView]|"
        constraints = NSLayoutConstraint.constraintsWithVisualFormat(formatString,
        options: nil,
        metrics: nil,
        views: ["webView": webView])
        view.addConstraints(constraints)
        // Load URL if there is one
        if let urlToLoad = URL {
        let req = NSURLRequest(URL: urlToLoad)
        webView.loadRequest(req)
        }
    }
}
