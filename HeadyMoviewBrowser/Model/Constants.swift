//
//  TMDBConstants.swift
//  HeadyMoviewBrowser
//
//  Created by Chhaya Tiwari on 8/10/18.
//  Copyright © 2018 chhayatiwari. All rights reserved.
//

import UIKit
// MARK: - Constants

struct Constants {
    
    // MARK: TMDB
        static let BaseUrl = "https://api.themoviedb.org/3"
        static let ApiKey = "79f6a22bb53b1a0749f542396d1674ca"
        static let imageCollUrl = "http://image.tmdb.org/t/p/w185"
        static let imageBaseUrl = "http://image.tmdb.org/t/p/w500"
        static let latestMoview = "/movie/now_playing"
    
    // MARK: TMDB Response Keys
    struct TMDBResponseKeys {
        static let Title = "title"
        static let ID = "id"
        static let PosterPath = "poster_path"
        static let StatusCode = "status_code"
        static let StatusMessage = "status_message"
        static let RequestToken = "request_token"
        static let Success = "success"
        static let UserID = "id"
        static let Results = "results"
}
}
