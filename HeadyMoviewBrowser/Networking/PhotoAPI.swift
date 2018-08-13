//
//  PhotoAPI.swift
//  HeadyMoviewBrowser
//
//  Created by Chhaya Tiwari on 8/11/18.
//  Copyright © 2018 chhayatiwari. All rights reserved.
//

import Foundation
import Alamofire
import UnboxedAlamofire

typealias Completion = ([Photo]) -> ()
typealias SearchResultCompletion = (SearchResult) -> ()

final class PhotoAPI {
    
    static let shared = PhotoAPI()
    
    private let apiBaseURL = Constants.BaseUrl
    
    private let defaultParams = [
        "api_key": Constants.ApiKey
    ]
    
    // MARK: Public methods
    
    func search(keyword term: String, page: String = "1", completion: SearchResultCompletion?) {
        
        let urlParams = [
            "query": term,
            "page": page
        ]
        get(endpoint: "/search/movie", parameters: urlParams, completion: completion)
    }
    
    // MARK: Convenience methods
    
    private func get(endpoint: String, parameters: Parameters?, completion: SearchResultCompletion?) {
        request(endpoint: endpoint,
                method: .get,
                encoding: URLEncoding.default,
                parameters: parameters,
                completion: completion
        )
    }
    
    private func post(endpoint: String, parameters: Parameters?, completion: SearchResultCompletion?) {
        request(endpoint: endpoint,
                method: .post,
                encoding: JSONEncoding.default,
                parameters: parameters,
                completion: completion
        )
    }
    
    private func allParameters(_ parameters: Parameters?) -> Parameters? {
        var params = parameters
        if params != nil {
            // merge default params
            for (key, value) in defaultParams {
                params!.updateValue(value, forKey: key)
            }
        } else {
            params = defaultParams
        }
        return params
    }
    
    private func request(endpoint: String, method: HTTPMethod, encoding: ParameterEncoding, parameters: Parameters?, completion: SearchResultCompletion?) {
        
        let url = apiBaseURL + endpoint
        let urlParams = allParameters(parameters)
        Alamofire.request(url, method: method, parameters: urlParams, encoding: encoding).validate(statusCode: 200..<300).responseObject { (response: DataResponse<SearchResult>) in
            print("PhotoAPI: \((response.request?.url)!)")
            switch response.result {
            case .success(let searchResult):
                completion?(searchResult)
            case .failure(let error):
                print("error: \(error)")
            }
        }
    }
}
