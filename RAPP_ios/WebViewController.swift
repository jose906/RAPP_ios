//
//  WebViewController.swift
//  RAPP_ios
//
//  Created by Jose Estenssoro on 2/6/22.
//

import UIKit
import WebKit

class WebViewController: UIViewController, WKNavigationDelegate {

    @IBOutlet weak var webview: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webview = WKWebView()
        webview.navigationDelegate = self
        view = webview
        
        let url = URL(string: "https://fppbolivia.com/controladores/cursos327/mensajes239/formulariorapp.php")!
        webview.load(URLRequest(url: url))
        webview.allowsBackForwardNavigationGestures = false
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
