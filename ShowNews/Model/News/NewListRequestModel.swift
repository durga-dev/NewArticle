//
//  NewListRequestModel.swift
//  ShowNews
//
//  Created by Durga Ballabha Panigrahi on 12/01/23.
//

import Foundation
//https://newsapi.org/v2/everything?q=tesla&from=2022-12-12&sortBy=publishedAt&apiKey=6dc9bf4dfc6342a7b15fea373d8e65d6
public struct NewListRequestModel : RequestModelProtocol {
    var baseURL: String {
        "https://newsapi.org"
    }
    
    var path: String {
        "/v2/everything"
    }
    
    var httpMethod: HTTPMethod {
        .GET
    }
    
    var parameter: [String : String] {
        ["apiKey" : "6dc9bf4dfc6342a7b15fea373d8e65d6","q":"tesla","from":"2022-12-12","sortBy":"publishedAt"]
    }
    
    
   
}
