//
//  FondoController.swift
//  RAPP_ios
//
//  Created by Jose Estenssoro on 28/6/22.
//

import UIKit

class FondoController: UIViewController {
    var post = [Post]()
    let parser = Parser()
    var index = 9

    @IBOutlet weak var noticias: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        noticias.dataSource = self
        noticias.delegate = self
        parser.fondo{data in
            
            
            self.post = data
            
            DispatchQueue.main.async {
                
                self.noticias.reloadData()
                
            }
            
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

extension FondoController:UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return post.count
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        index = indexPath.row
        performSegue(withIdentifier: "not1", sender: self)
        
      
      
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VerNotasController {
            destination.posts = post[index]
            
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fondo", for: indexPath)
        
        
        
        if let label = cell.viewWithTag(30) as? UILabel {
            
            
            label.text = post[indexPath.row].title.rendered
        }
        //print(post[indexPath.row].jetpack_featured_media_url)
        
        
        if post[indexPath.row].jetpack_featured_media_url.isEmpty{
            post[indexPath.row].jetpack_featured_media_url = "https://rapp.org.bo/wp-content/uploads/2022/03/4.png"
        }
        else
        {
            
            let url:URL
           
                
                 url = URL(string: post[indexPath.row].jetpack_featured_media_url)!
        
            print( post[indexPath.row].jetpack_featured_media_url)
            
            
           
           print(url)
        
        if let image = cell.viewWithTag(31) as? UIImageView   {
            
        
            let dataTask = URLSession.shared.dataTask(with: url) { [weak self] (data, _, _) in
                   if let data = data {
                       DispatchQueue.main.async {
                           // Create Image and Update Image View
                           image.image = UIImage(data: data)
                           image.layer.masksToBounds = true
                           image.layer.cornerRadius = image.bounds.width / 15
                       }
                   }
               }

               // Start Data Task
               dataTask.resume()
            
            
        }
        }
            
    
        return cell
    }
}
