//
//  UsersView.swift
//  RandomUser
//
//  Created by Ryo Martin on 04/02/24.
//

import SwiftUI

struct UsersView: View {
    @StateObject var userData = UserData()
    
    var body: some View {
        NavigationView {
            List(userData.users) { user in
                Text(user.fullName)
            }
//            VStack {
//                Text("Raw JSON Data: ")
//                ScrollView {
//                 //   Text(userData.users)
//                }
//            }
            .navigationTitle("Random Users")
        }
    }
}

#Preview {
    UsersView()
}
