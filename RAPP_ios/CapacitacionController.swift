//
//  CapacitacionController.swift
//  RAPP_ios
//
//  Created by Jose Estenssoro on 6/6/22.
//

import UIKit

class CapacitacionController: UIViewController {
    
    var post = [Post]()
    let parser = Parser()
    var index = 9
    @IBOutlet weak var noticias: UITableView!
    
    @IBOutlet weak var conservatorio: UIButton!
    @IBOutlet weak var taller: UIButton!
    @IBOutlet weak var foro: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        noticias.dataSource = self
        noticias.delegate = self
        parser.foros{data in
            
            
            self.post = data
            
            DispatchQueue.main.async {
                
                self.noticias.reloadData()
                
            }
            
        }
        
      


        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func openForos(_ sender: Any) {
        
        
        post.removeAll()
        parser.foros{data in
            
            
            self.post = data
            
            DispatchQueue.main.async {
                
                self.noticias.reloadData()
                
            }
            
        }
        
    }
    
    @IBAction func openTallers(_ sender: Any) {
        
        post.removeAll()
        parser.talleres{data in
            
            
            self.post = data
            
            DispatchQueue.main.async {
                
                self.noticias.reloadData()
                
            }
            
        }
    }
    
    @IBAction func openConser(_ sender: Any) {
        post.removeAll()
        parser.conseervatorio{data in
            
            
            self.post = data
            
            DispatchQueue.main.async {
                
                self.noticias.reloadData()
                
            }
            
        }
        
        
    }
    


}
extension CapacitacionController:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return post.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        index = indexPath.row
        performSegue(withIdentifier: "not2", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? CapacitacionNotasController {
            destination.posts = post[index]
            
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "capacitacion", for: indexPath)
        
        
        
        if let label = cell.viewWithTag(20) as? UILabel {
            
            
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
        
        if let image = cell.viewWithTag(21) as? UIImageView   {
            
        
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
