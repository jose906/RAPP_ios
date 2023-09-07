//
//  Parser.swift
//  RAPP_ios
//
//  Created by Jose Estenssoro on 31/5/22.
//

import Foundation

struct Parser{
    
    func parse(comp: @escaping ([Post])->()){
        
        let url = URL(string: "https://rapp.org.bo/wp-json/wp/v2/posts")
        
        URLSession.shared.dataTask(with: url!){
            data,response,error in
            
            if error != nil{
                
                print(error?.localizedDescription)
                return
            }
            
            do{
                let result:[Post] =  try JSONDecoder().decode([Post].self,from:data!)
                
                comp(result)
                
                
            }catch let error{
                
               print(error)
                
            }
        
        }.resume()
        
    }
    
    func foros(comp: @escaping ([Post])->()){
        
        let url = URL(string: "https://rapp.org.bo/wp-json/wp/v2/posts?categories=20")
        
        URLSession.shared.dataTask(with: url!){
            data,response,error in
            
            if error != nil{
                
                print(error?.localizedDescription)
                return
            }
            
            do{
                let result:[Post] =  try JSONDecoder().decode([Post].self,from:data!)
                
                comp(result)
                
                
            }catch let error{
                
               print(error)
                
            }
        
        }.resume()
        
    }
    func talleres(comp: @escaping ([Post])->()){
        
        let url = URL(string: "https://rapp.org.bo/wp-json/wp/v2/posts?categories=21")
        
        URLSession.shared.dataTask(with: url!){
            data,response,error in
            
            if error != nil{
                
                print(error?.localizedDescription)
                return
            }
            
            do{
                let result:[Post] =  try JSONDecoder().decode([Post].self,from:data!)
                
                comp(result)
                
                
            }catch let error{
                
               print(error)
                
            }
        
        }.resume()
        
    }
    func conseervatorio(comp: @escaping ([Post])->()){
        
        let url = URL(string: "https://rapp.org.bo/wp-json/wp/v2/posts?categories=22")
        
        URLSession.shared.dataTask(with: url!){
            data,response,error in
            
            if error != nil{
                
                print(error?.localizedDescription)
                return
            }
            
            do{
                let result:[Post] =  try JSONDecoder().decode([Post].self,from:data!)
                
                comp(result)
                
                
            }catch let error{
                
               print(error)
                
            }
        
        }.resume()
        
    }
    func fondo(comp: @escaping ([Post])->()){
        
        let url = URL(string: "https://rapp.org.bo/wp-json/wp/v2/posts?categories=19")
        
        URLSession.shared.dataTask(with: url!){
            data,response,error in
            
            if error != nil{
                
                print(error?.localizedDescription)
                return
            }
            
            do{
                let result:[Post] =  try JSONDecoder().decode([Post].self,from:data!)
                
                comp(result)
                
                
            }catch let error{
                
               print(error)
                
            }
        
        }.resume()
        
    }
    func boletines(comp: @escaping ([Post])->(),num:Int){
        
        let url = URL(string: "https://rapp.org.bo/wp-json/wp/v2/posts?categories=18")
        print(num)
        URLSession.shared.dataTask(with: url!){
            data,response,error in
            
            if error != nil{
                
                print(error?.localizedDescription)
                return
            }
            
            do{
                let result:[Post] =  try JSONDecoder().decode([Post].self,from:data!)
                
                comp(result)
                
                
            }catch let error{
                
               print(error)
                
            }
        
        }.resume()
        
    }
    
}
