//
//  Post.swift
//  RAPP_ios
//
//  Created by Jose Estenssoro on 31/5/22.
//

import Foundation


struct Posts:Codable{
    
    let Post:[Posts]
    
}

struct Post:Codable{

    let id:Int
    let date:String
    let date_gmt:String
    let guid:Guid
    let modified:String
    let modified_gmt:String
    let slug:String
    let status:String
    let type:String
    let link:String
    let title:Title
    let content:Content
    let author:Int
    let featured_media:Int
    let comment_status:String
    let ping_status:String
    let sticky:Bool
    let template:String
    let format:String
    let categories:[Int]
    var jetpack_featured_media_url:String
    
}

struct Guid:Codable{
    
    let rendered:String
    
    
}
struct Title:Codable{

    let rendered:String
    

}

struct Content:Codable{
    
    let rendered:String
    let protected:Bool
    
}
