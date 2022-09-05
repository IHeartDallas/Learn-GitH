//
//  DataService.swift
//  Mentalist
//
//  Created by Terese Martyn on 9/3/22.
//

import Foundation


class DataService {
    
    static func getLocalData() -> [Mentalist] {
       
        let pathString = Bundle.main.path(forResource: "mentalistsquotes", ofType: "json")
        
        guard pathString != nil else {
            return [Mentalist]()
        }
        
                
        //Create a url object
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            let data = try Data(contentsOf: url)
            
            let decoder = JSONDecoder()
            
            do {
                let mentalistData = try decoder.decode([Mentalist].self, from: data)
                
                for r in mentalistData {
                    r.id = UUID()
                }
                
                return mentalistData
              }
                catch {
                    print(error)
            }
        }
        catch {
            print(error)
        }
  
        return [Mentalist]()
    }
        
}
    
        



