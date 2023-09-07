//
//  YouTubeParser.swift
//  RAPP_ios
//
//  Created by Jose Estenssoro on 13/7/22.
//

import Foundation

struct YouTubeParser{

    func parse(comp: @escaping (VideoList)->()){
    
    let url = URL(string: "https://youtube.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=PL5NtJkMKd9SEYLAF-pvJgzO9YCKvmQPQh&key=AIzaSyBWtMnAHLSK7fxWTgtUDU8f6m6rwCHVb_A")
    
    URLSession.shared.dataTask(with: url!){
        data,response,error in
        
        if error != nil{
            
            print(error?.localizedDescription)
            print("error")
            return
        }
        
        do{
            let result:VideoList =  try JSONDecoder().decode(VideoList.self,from:data!)
            
            comp(result)
            
            
        }catch let error{
            
           print(error)
            print("error 2")
            
        }
    
    }.resume()
    
}
}
