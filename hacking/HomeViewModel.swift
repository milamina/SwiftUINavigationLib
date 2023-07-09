//
//  HomeViewModel.swift
//  hacking
//
//  Created by hsaidi on 22/06/2023.
//

import Foundation

struct User {
    var id: Int
    var name: String
}

final class HomeViewModel: ObservableObject {
    @Published var users: [User] = []

    func fetchUsers() {
        users = [
            User(id: 1, name: "User 1"),
            User(id: 2, name: "User 2"),
            User(id: 3, name: "User 3"),
        ]
    }
}
