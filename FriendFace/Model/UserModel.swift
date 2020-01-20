//
//  User.swift
//  FriendFace
//
//  Created by Davron on 1/14/20.
//  Copyright © 2020 Davron. All rights reserved.
//

import Foundation

struct UserModel: Codable, Identifiable {
    let id: String
    let isActive: Bool
    let name: String
    let company: String
    let address: String
    let about: String
    let registered: String
    let friends: [FriendModel]
    let tags: [String]   
}
