//
//  Photo.swift
//  HeadyMoviewBrowser
//
//  Created by Chhaya Tiwari on 8/12/18.
//  Copyright © 2018 chhayatiwari. All rights reserved.
//

import Foundation
import Unbox

struct Photo {
    let name: String
    let description: String?
    let width: Int
    let height: Int
    let nsfw: Bool
    let imageURL: String
    let imageFormat: String
    let createdAt: Date?
    
}

extension Photo: Unboxable {
    init(unboxer: Unboxer) throws {
        
        self.name = try unboxer.unbox(key: "title")
        self.description = unboxer.unbox(key: "description")
        self.width = try unboxer.unbox(key: "width")
        self.height = try unboxer.unbox(key: "height")
        self.nsfw = try unboxer.unbox(key: "nsfw")
        self.imageURL = try unboxer.unbox(key: "poster_path")
        self.imageFormat = try unboxer.unbox(key: "image_format")
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZZZZZ"
        self.createdAt = unboxer.unbox(keyPath: "created_at", formatter: dateFormatter)
    }
}
