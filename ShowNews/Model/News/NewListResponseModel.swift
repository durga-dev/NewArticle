//
//  NewListResponseModel.swift
//  ShowNews
//
//  Created by Durga Ballabha Panigrahi on 12/01/23.
//

import Foundation

public struct NewListResponseModel: Codable {
    let status: String?
    let articles: [Article]?
}

// MARK: - Article
public struct Article: Codable {
    let source: Source?
    let author: String?
    let title: String?
    let description: String?
    let url: String?
    let urlToImage: String?
    let content: String?
}

// MARK: - Source
public struct Source: Codable {
    let id: String?
    let name: String?
}
//Epicurious
