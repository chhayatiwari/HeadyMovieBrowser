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
    struct TMDB {
        static let ApiScheme = "http"
        static let ApiHost = "api.themoviedb.org"
        static let ApiPath = "/3"
    }
    
    // MARK: TMDB Parameter Keys
    struct TMDBParameterKeys {
        static let ApiKey = "api_key"
        static let RequestToken = "request_token"
        static let SessionID = "session_id"
        static let Username = "username"
        static let Password = "password"
    }
    
    // MARK: TMDB Parameter Values
    struct TMDBParameterValues {
        static let ApiKey = "79f6a22bb53b1a0749f542396d1674ca"
    }
    
    // MARK: TMDB Response Keys
    struct TMDBResponseKeys {
        static let Title = "title"
        static let ID = "id"
        static let PosterPath = "poster_path"
        static let StatusCode = "status_code"
        static let StatusMessage = "status_message"
        static let SessionID = "session_id"
        static let RequestToken = "request_token"
        static let Success = "success"
        static let UserID = "id"
        static let Results = "results"
}
}
