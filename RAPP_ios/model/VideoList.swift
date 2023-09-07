//
//  VideoList.swift
//  RAPP_ios
//
//  Created by Jose Estenssoro on 12/7/22.
//

import Foundation


struct VideoList:Codable{
    
    let kind:String
    let etag:String
    let nextPageToken:String
   // let prevPageToken:String
    let items:[Items]
    let pageInfo:PageInfo
    
    
}

struct Items:Codable{
    
    let kind:String
    let etag:String
    let id:String
    let snippet:Snippet
}

struct PageInfo:Codable{
    
    let totalResults:Int
    let resultsPerPage:Int

}

struct Snippet:Codable {
    let publishedAt:String
    let channelId:String
    let title:String
    let description:String
    let thumbnails:Thumbnails
    let channelTitle:String
    let playlistId:String
    let position:Int
    let resourceId:ResourceId
    let videoOwnerChannelTitle:String
    let videoOwnerChannelId:String
    
}

struct Thumbnails:Codable {
    
    
    let medium:Medium
    let high:High
    let standard:Standard
    let maxres:Maxres
}
struct Medium:Codable{
    
    let  url:String
    let  width:Int
    let  height:Int
}
struct High:Codable{
    let  url:String
    let  width:Int
    let  height:Int
    
}
struct Standard:Codable{
    
    let  url:String
    let  width:Int
    let  height:Int
    
}
struct Maxres:Codable{
    
    let  url:String
    let  width:Int
    let  height:Int
    
}

struct ResourceId:Codable {
    
    let kind:String
    let videoId:String 
}
