//
//  User.swift
//  InstagramClone
//
//  Created by Md Maaz Ahmad on 27/06/23.
//

import Foundation

struct User: Identifiable, Hashable, Codable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    var email: String
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "batman", profileImageUrl: "batman-2", fullname: nil, bio: "Gotham's Dark knight", email: "batman@dc.com"),
        .init(id: NSUUID().uuidString, username: "blackwidow", profileImageUrl: "black-widow-2", fullname: "Natasha Ramnoff", bio: "Undercover Spy", email: "balckWidow@marvel.com"),
        .init(id: NSUUID().uuidString, username: "captainmarvel", profileImageUrl: "captain-marvel-2", fullname: "Carol Danvers", bio: "Most Powerful", email: "cmarvel@marvel.com"),
        .init(id: NSUUID().uuidString, username: "ironman", profileImageUrl: "iron-man-2", fullname: "Tony Stark", bio: "Playboy & Billinoere", email: "ironmann@marvel.com"),
        .init(id: NSUUID().uuidString, username: "supergirl", profileImageUrl: "super-girl-1", fullname: "Kara Danvers", bio: "Krypton", email: "supergirl@dc.com")
    ]
}

