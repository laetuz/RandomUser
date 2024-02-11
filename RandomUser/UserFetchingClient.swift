//
//  UserFetchingClient.swift
//  RandomUser
//
//  Created by Ryo Martin on 04/02/24.
//

import Foundation

struct UserFetchingClient {
    static private let url = URL(string: "https://randomuser.me/api/?results=10&format=pretty")!
    
    static func getUsers() async throws -> [User] {
        async let (data, _) = URLSession.shared.data(from: url)
        let response = try await JSONDecoder().decode(Response.self, from: data)
        return response.users//try await String(data: data, encoding: .utf8)!
    }
}
