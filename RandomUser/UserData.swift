//
//  UserData.swift
//  RandomUser
//
//  Created by Ryo Martin on 04/02/24.
//

import Foundation

class UserData {
    var users: String = ""
    
    init() {
        Task {
            await loadUsers()
        }
    }
    
    func loadUsers() async {
        do {
            let users = try await UserFetchingClient.getUsers()
            self.users = users
        } catch {
            print(error)
        }
    }
}