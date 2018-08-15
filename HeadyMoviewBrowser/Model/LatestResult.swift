//
//  LatestMovieResult.swift
//  HeadyMoviewBrowser
//
//  Created by Chhaya Tiwari on 8/15/18.
//  Copyright © 2018 chhayatiwari. All rights reserved.
//

import Foundation
import Unbox

struct LatestResult {
    
    let photos: [Photo]?
}

extension LatestResult  : Unboxable {
    init(unboxer: Unboxer) throws {
        self.photos = unboxer.unbox(key: "results")
        
    }
}
