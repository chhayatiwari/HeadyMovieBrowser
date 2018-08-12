//
//  SearchResult.swift
//  HeadyMoviewBrowser
//
//  Created by Chhaya Tiwari on 8/12/18.
//  Copyright © 2018 chhayatiwari. All rights reserved.
//

import Foundation
import Unbox

struct SearchResult {
    let currentPage: Int
    let totalPages: Int
    let totalItems: Int
    let photos: [Photo]?
}

extension SearchResult  : Unboxable {
    init(unboxer: Unboxer) throws {
        self.currentPage = try unboxer.unbox(key: "page")
        self.totalPages = try unboxer.unbox(key: "total_pages")
        self.totalItems = try unboxer.unbox(key: "total_results")
        self.photos = unboxer.unbox(key: "results")
        
    }
}
