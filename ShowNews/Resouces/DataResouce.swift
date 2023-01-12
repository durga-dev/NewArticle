//
//  DataResouce.swift
//
//  Created by Durga Ballabha Panigrahi on 12/01/23.
//

import Foundation

public struct DataResource {
    private let httpUtil:HTTPUtility
    
    init(httpUtil:HTTPUtility) {
        self.httpUtil = httpUtil
    }
    
    func getData(
        request: RequestModelProtocol,
        completion: @escaping (NewListResponseModel?) -> ()
    ) {
        var urlComponent = URLComponents(string: request.baseURL)
        urlComponent?.path = request.path
        var urlItems = [URLQueryItem]()
        
        request.parameter.forEach { (key, value) in
            urlItems.append(URLQueryItem(name: key, value: value))
        }
        
        urlComponent?.queryItems = urlItems
        
        if let url = urlComponent?.url {
            httpUtil.getData(
                requestUrl: url,
                resultType: NewListResponseModel.self) { result in
                completion(result)
            }
        }
       
    }
}
