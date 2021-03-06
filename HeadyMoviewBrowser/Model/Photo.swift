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
    let nsfw: Bool
    let imageURL: String
    let createdAt: String
    let userRating: Double
    let popularity: Double
}

extension Photo: Unboxable {
    init(unboxer: Unboxer) throws {
        
        self.name = try unboxer.unbox(key: "title")
        self.description = unboxer.unbox(key: "overview")
        self.nsfw = try unboxer.unbox(key: "adult")
        self.imageURL = try unboxer.unbox(key: "poster_path")
        self.userRating = try unboxer.unbox(key: "vote_average")
        self.popularity = try unboxer.unbox(key: "popularity")
        self.createdAt = try unboxer.unbox(key: "release_date")
    }
}
