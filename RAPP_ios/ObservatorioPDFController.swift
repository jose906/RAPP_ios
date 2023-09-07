//
//  ObservatorioPDFController.swift
//  RAPP_ios
//
//  Created by Jose Estenssoro on 1/7/22.
//

import UIKit
import WebKit
import PDFKit

class ObservatorioPDFController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    var url1:String?
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
