//
//  YouTubeViewController.swift
//  RAPP_ios
//
//  Created by Jose Estenssoro on 12/7/22.
//

import UIKit
import youtube_ios_player_helper



class YouTubeViewController: UIViewController,YTPlayerViewDelegate {

    @IBOutlet weak var videos: UITableView!
    @IBOutlet var playerView:YTPlayerView!
    var video:VideoList?
    var items = [Items]()
    let youtube = YouTubeParser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playerView.delegate = self
        playerView.load(withVideoId: "jY2viMLveQw", playerVars: ["playsinline": 1])
        videos.dataSource = self
        videos.delegate = self
       
        
        youtube.parse{data in
            
            
            self.video = data
            self.items = self.video!.items
            print(self.items.count)
            
           
           
            DispatchQueue.main.async {
                
             self.videos.reloadData()
                
                print("hola")
                
            }
            
        }
        // Do any additional setup after loading the view.
    }
    
    
    
    func playerViewDidBecomeReady(_ playerView: YTPlayerView) {
        playerView.playVideo()
        
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

extension YouTubeViewController:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //index = indexPath.row
        print("hola mundo")
        playerView.load(withVideoId: items[indexPath.row].snippet.resourceId.videoId, playerVars: ["playsinline": 1])
        
        
       
    }
    
  
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "youtube", for: indexPath)
        
        print(items[indexPath.row].etag)
       // cell.textLabel?.text = items[indexPath.row].snippet.title
        
      
        if let label = cell.viewWithTag(81) as? UILabel {
            
            
            label.text = items[indexPath.row].snippet.title
        }
        if let label = cell.viewWithTag(82) as? UILabel {
            
            
            label.text = items[indexPath.row].snippet.description
        }
        if let label = cell.viewWithTag(83) as? UILabel {
            
            
            label.text = items[indexPath.row].snippet.publishedAt
        }
        //print(post[indexPath.row].jetpack_featured_media_url)
        
        let url = URL(string: items[indexPath.row].snippet.thumbnails.standard.url)!
        
        if let image = cell.viewWithTag(80) as? UIImageView   {
            
        
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
            
        

        
        
        return cell
    }
    
        
    }
