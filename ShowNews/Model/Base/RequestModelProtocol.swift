//
//  RequestModelProtocol.swift
//  LiveInterView
//
//  Created by User on 08/01/23.
//

import Foundation

protocol RequestModelProtocol {
    var baseURL: String { get }
    var path: String { get }
    var httpMethod: HTTPMethod { get }
    var parameter: [String: String] { get }
}
