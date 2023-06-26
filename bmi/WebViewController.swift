//
//  WebViewController.swift
//  bmi
//
//  Created by 소프트웨어컴퓨터 on 2020/11/20.
//

import UIKit
import WebKit

class WebViewController: UIViewController {
    @IBOutlet var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func goNaver(_ sender: UIButton) {
        guard let url = URL(string: "https://www.naver.com") else{return}
        let request = URLRequest(url: url)
        webView?.load(request)
    }
    

}
