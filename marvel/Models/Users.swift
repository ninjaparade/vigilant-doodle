import Foundation

struct Users: Codable {
    let data: [User]
}

struct User: Codable {
    let id: Int
    let uuid: String
    let name: String
    let city: String
    let address: String
    let state: String
    let country: String
    let email: String
    let phone: String
    let avatar: String
    let headerImage: String
    let bio: String
    
    
    enum CodingKeys: String, CodingKey {
        case id
        case uuid
        case name
        case city
        case address
        case state
        case country
        case email
        case phone
        case avatar
        case bio
        case headerImage = "header_image"
    }
}


