//
//  APIService.swift
//  marvel
//
//  Created by Yaz Jallad on 2019-04-23.
//  Copyright © 2019 Yaz Jallad. All rights reserved.
//

import Foundation

enum APIResult<T> {
    case success(T)
    case failure(String)
}

protocol APIService {
    var accessKey: String { get set }
    var secretKey: String { get set }
    
    func getUsers(completion: @escaping (APIResult<Users>) -> Void)
    
    func getUser(id: String, completion: @escaping (APIResult<Users>) -> Void)
}
