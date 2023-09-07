//
//  BoletinesController.swift
//  RAPP_ios
//
//  Created by Jose Estenssoro on 14/7/22.
//

import UIKit

class BoletinesController: UIViewController {
    var post = [Post]()
    var index = 0
    let parser = Parser()
    @IBOutlet weak var nboletines: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        nboletines.dataSource = self
        nboletines.delegate = self
        
        
        parser.boletines(comp: {data in
            
            
            self.post = data
            
            DispatchQueue.main.async {
                
                self.nboletines.reloadData()
                
            }
            
        },num: 1)

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
extension BoletinesController:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return post.count
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        index = indexPath.row
        print("hola mundo")
        performSegue(withIdentifier: "boletines", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? BoletinViewController {
            destination.posts = post[index]
            
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "boletines", for: indexPath)
        
        
        
       
        if let label = cell.viewWithTag(51) as? UILabel {
            
            
            label.text = post[indexPath.row].title.rendered
        }
        if let label = cell.viewWithTag(52) as? UILabel {
            
            
            label.text = post[indexPath.row].date
        }
        //print(post[indexPath.row].jetpack_featured_media_url)
        
        
        if post[indexPath.row].jetpack_featured_media_url.isEmpty{
            post[indexPath.row].jetpack_featured_media_url = "https://rapp.org.bo/wp-content/uploads/2022/03/4.png"
        }
        else
        {
            
            let url:URL
            if indexPath.row == 5 {
                // url = URL(string: "https://rapp.org.bo/wp-content/uploads/2022/05/i%CC%81ndice-696x696-1.jpg")!
                url = URL(string: post[indexPath.row].jetpack_featured_media_url)!
                
            }else{
                
                 url = URL(string: post[indexPath.row].jetpack_featured_media_url)!
            }
            print( post[indexPath.row].jetpack_featured_media_url)
            
            
           
           print(url)
        
        if let image = cell.viewWithTag(50) as? UIImageView   {
            
        
            let dataTask = URLSession.shared.dataTask(with: url) { [weak self] (data, _, _) in
                   if let data = data {
                       DispatchQueue.main.async {
                           // Create Image and Update Image View
                           image.image = UIImage(data: data)
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
