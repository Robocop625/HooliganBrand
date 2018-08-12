//
//  ViewController.swift
//  HooliganBrand
//
//  Created by Robert Taylor-Anderson on 8/2/18.
//  Copyright © 2018 Taylor'd. All rights reserved.
//


import UIKit
import WebKit
import OneSignal


class ViewController: UIViewController, WKNavigationDelegate {
    var webView: WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let status: OSPermissionSubscriptionState = OneSignal.getPermissionSubscriptionState()
        let userID = status.subscriptionStatus.userId
        print("userID = \(userID)")
        
        // 1
        let url = URL(string: "https://hooliganbrand.us")!
        webView.load(URLRequest(url: url))
        
        // 2
        let refresh = UIBarButtonItem(barButtonSystemItem: .refresh, target: webView, action: #selector(webView.reload))
        toolbarItems = [refresh]
        navigationController?.isToolbarHidden = false
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        title = webView.title
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    [self.view insertSubview:<new Uiview> aboveSubview:<existing uiview>];
}
