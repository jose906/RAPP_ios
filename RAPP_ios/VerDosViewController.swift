//
//  VerDosViewController.swift
//  RAPP_ios
//
//  Created by Jose Estenssoro on 11/7/22.
//

import UIKit
import WebKit

class VerDosViewController: UIViewController {
    
    var posts:Post?
@IBOutlet weak var image: UIImageView!
    @IBOutlet weak var tituloNotas: UILabel!
    
    @IBOutlet weak var vistaNota: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        var str = posts!.jetpack_featured_media_url
        let url:URL
        
        if(str.contains("í")){
            str = str.replacingOccurrences(of: "í", with: "i%CC%81")
            url = URL(string: str)!
            
        }else{
            
            url = URL(string: str)!
            print(url)
            
        }
        let content = posts?.content.rendered.replacingOccurrences(of: "<img ", with: "<img style='display:none;' ")
        
        if let data = try? Data(contentsOf: url ) {
                // Create Image and Update Image View
                image.image = UIImage(data: data)
            }
        tituloNotas.text = posts?.title.rendered
        
        vistaNota.loadHTMLString(content!, baseURL: nil)
        print(posts?.id)
        

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
