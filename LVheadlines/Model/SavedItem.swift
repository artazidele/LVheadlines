//
//  SavedItem.swift
//  LVheadlines
//
//  Created by arta.zidele on 15/02/2021.
//

import Foundation
import Gloss

struct SavedItem: JSONDecodable {
    
    var description: String
    var title: String
    var url: String
    var imageUrl: String
    
    init?(json: JSON) {
        self.title = "title" <~~ json ?? ""
        self.description = "description" <~~ json ?? ""
        self.url = "url" <~~ json ?? ""
        self.imageUrl = "urlToImage" <~~ json ?? ""
        
    }
    
}
