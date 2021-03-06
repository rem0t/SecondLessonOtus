//
// RecipeList.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct RecipeList: Codable {

    public var title: String?
    public var results: [Recipe]?

    public init(title: String? = nil, results: [Recipe]? = nil) {
        self.title = title
        self.results = results
    }

}

