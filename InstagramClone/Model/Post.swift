//
//  Post.swift
//  InstagramClone
//
//  Created by Md Maaz Ahmad on 27/06/23.
//

import Foundation

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownerUid: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timestamp: Date
    var user: User?
}

extension Post {
    static var MOCK_POST: [Post] = [
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "This is the some test caption for now",
            likes: 123,
            imageUrl: "batman-2",
            timestamp: Date(),
            user: User.MOCK_USERS[0]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "This is the some test caption for now",
            likes: 12,
            imageUrl: "black-widow-2",
            timestamp: Date(),
            user: User.MOCK_USERS[1]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "Kree Planet",
            likes: 13,
            imageUrl: "captain-marvel-2",
            timestamp: Date(),
            user: User.MOCK_USERS[2]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "stark industries",
            likes: 18,
            imageUrl: "iron-man-2",
            timestamp: Date(),
            user: User.MOCK_USERS[3]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "Krypton Planet",
            likes: 123,
            imageUrl: "super-girl-2",
            timestamp: Date(),
            user: User.MOCK_USERS[4]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "Krypton Planet",
            likes: 134,
            imageUrl: "super-girl-3",
            timestamp: Date(),
            user: User.MOCK_USERS[4]
        ),
    ]
}
