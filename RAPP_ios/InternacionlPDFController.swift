//
//  InternacionlPDFController.swift
//  RAPP_ios
//
//  Created by Jose Estenssoro on 11/7/22.
//

import UIKit
import WebKit

class InternacionlPDFController: UIViewController {
    var url1:String?
    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let resourceUrl = URL(string:url1!) {
             let request = URLRequest(url: resourceUrl)
            print("cargando")
             webView.load(request)
             
             
         }
        else  {
            print("fallo")
            
        }

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
