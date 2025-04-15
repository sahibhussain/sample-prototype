//
//  Model.swift
//  sample
//
//  Created by Sahib Hussain on 15/04/25.
//

import Foundation

class Post: Codable, Identifiable {
    
    enum CodingKeys: String, CodingKey {
        case id
        case userId
        case title
        case body
        case isSkeleton
    }
    
    let id: Int
    let userId: Int
    
    let title: String
    let body: String
    let isSkeleton: Bool
    
    required init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(Int.self, forKey: .id)
        self.userId = try container.decode(Int.self, forKey: .userId)
        self.title = try container.decode(String.self, forKey: .title)
        self.body = try container.decode(String.self, forKey: .body)
        self.isSkeleton = try container.decodeIfPresent(Bool.self, forKey: .isSkeleton) ?? false
    }
    
    init() {
        self.id = Int.random(in: 1...1000)
        self.userId = 0
        self.title = "sample title. sample title."
        self.body = "this is a sample body. this is a sample body. this is a sample body. this is a sample body. this is a sample body."
        self.isSkeleton = true
    }
    
    func encode(to encoder: any Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.userId, forKey: .userId)
        try container.encode(self.title, forKey: .title)
        try container.encode(self.body, forKey: .body)
    }
    
}
