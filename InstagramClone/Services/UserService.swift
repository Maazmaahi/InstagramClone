//
//  UserService.swift
//  InstagramClone
//
//  Created by Md Maaz Ahmad on 05/07/23.
//

import Foundation
import Firebase

class UserService {
    static func fetchAllUsers() async throws -> [User] {
        let snapshot = try await Firestore.firestore().collection("users").getDocuments()
        return snapshot.documents.compactMap({ try? $0.data(as: User.self) })
    }
}
