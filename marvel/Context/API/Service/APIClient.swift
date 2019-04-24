//
//  APIClient.swift
//  marvel
//
//  Created by Yaz Jallad on 2019-04-23.
//  Copyright © 2019 Yaz Jallad. All rights reserved.
//

import Foundation

struct APIClient: APIService {
    
    let url = URL(string: "http://dummyapi.test/")!
    let session: URLSession = URLSession(configuration: .default)
    
    var accessKey: String
    var secretKey: String
    
    init(accessKey: String, secretKey: String) {
        self.accessKey = accessKey
        self.secretKey = secretKey
    }
    
    func getUsers(completion: @escaping (APIResult<Users>) -> Void) {
        session.dataTask(with: self.url) { (data, response, error) in
            
            guard let data = data else { print("Error unwrapping data"); return }
            
            do {
                let users = try JSONDecoder().decode(Users.self, from: data)
                completion(.success(users))
            } catch {
                completion(.failure("Could not get API data. \(error), \(error.localizedDescription)"))
            }
        }.resume()
    }
    
    
    func getUser(id: String, completion: @escaping (APIResult<Users>) -> Void) {
    
    }
}
