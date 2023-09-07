//
//  ViewController.swift
//  RAPP_ios
//
//  Created by Jose Estenssoro on 17/5/22.
//

import UIKit

class ViewController: UIViewController {

    var post = [Post]()
    var index = 0
    
    @IBOutlet weak var noticias: UITableView!
    let parser = Parser()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        noticias.dataSource = self
        noticias.delegate = self
        
        parser.parse{data in
            
            
            self.post = data
            
            DispatchQueue.main.async {
                
                self.noticias.reloadData()
                
            }
            
        }
        
    }
}
    
    
  
    
    
extension ViewController:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return post.count
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        index = indexPath.row
        print("hola mundo")
        performSegue(withIdentifier: "not3", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VerDosViewController {
            destination.posts = post[index]
            
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        
        
       
        if let label = cell.viewWithTag(16) as? UILabel {
            
            
            label.text = post[indexPath.row].date
        }
        if let label = cell.viewWithTag(17) as? UILabel {
            
            
            label.text = post[indexPath.row].title.rendered
        }
        //print(post[indexPath.row].jetpack_featured_media_url)
        
        
        if post[indexPath.row].jetpack_featured_media_url.isEmpty{
            //post[indexPath.row].jetpack_featured_media_url = "https://rapp.org.bo/wp-content/uploads/2022/03/4.png"
        }
        else
        {
            
            
            var str = post[indexPath.row].jetpack_featured_media_url
            let url:URL
            
            if(str.contains("í")){
                str = str.replacingOccurrences(of: "í", with: "i%CC%81")
                url = URL(string: str)!
                
            }else{
                
                url = URL(string: str)!
                print(url)
                
            }
           
        
        if let image = cell.viewWithTag(15) as? UIImageView   {
            
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
    
    






