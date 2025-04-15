//
//  ViewModel.swift
//  sample
//
//  Created by Sahib Hussain on 15/04/25.
//

import Foundation
import SHNetwork

class ViewModel {
    
    internal typealias Response<T: Codable> = Result<T, Error>
    
    static let shared = ViewModel()
    private init() {}
    
    func getAllPosts(_ completion: @escaping (Result<[Post], Error>) -> Void) {
        SHNetwork.shared.sendGetRequest(with: "https://jsonplaceholder.typicode.com/posts", param: "", customHeader: [:]) { (response: Response<[Post]>) in
            completion(response)
        }
    }
    
    func createPost(_ titled: String, body: String, completion: @escaping (Result<Post, Error>) -> Void) {
        let parameters: [String: Any] = ["title": titled, "body": body, "userId": 1]
        SHNetwork.shared.sendRequest(with: "https://jsonplaceholder.typicode.com/posts", method: .post, param: parameters, headers: [:]) { (response: Response<Post>) in
            completion(response)
        }
    }
    
}
