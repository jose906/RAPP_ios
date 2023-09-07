//
//  CapacitacionNotasController.swift
//  RAPP_ios
//
//  Created by Jose Estenssoro on 5/7/22.
//

import UIKit
import WebKit

class CapacitacionNotasController: UIViewController {
    var posts:Post?

  
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var titulo: UILabel!
    @IBOutlet weak var contenido: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string:posts!.jetpack_featured_media_url)!
        let content = posts?.content.rendered.replacingOccurrences(of: "<img ", with: "<img style='display:none;' ")
        
        titulo.text =  posts?.title.rendered
        if let data = try? Data(contentsOf: url ) {
                // Create Image and Update Image View
                image.image = UIImage(data: data)
            }
        contenido.loadHTMLString(content!, baseURL:nil)

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
