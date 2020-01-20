//
//  User+CoreDataProperties.swift
//  FriendFaceWithCoreData
//
//  Created by Davron on 1/19/20.
//  Copyright © 2020 Davron. All rights reserved.
//
//

import Foundation
import CoreData


extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User")
    }

    @NSManaged public var about: String?
    @NSManaged public var name: String?
    @NSManaged public var id: String?
    @NSManaged public var address: String?
    @NSManaged public var isActive: Bool
    @NSManaged public var company: String?
    @NSManaged public var friend: NSSet?

}

// MARK: Generated accessors for friend
extension User {

    @objc(addFriendObject:)
    @NSManaged public func addToFriend(_ value: Friend)

    @objc(removeFriendObject:)
    @NSManaged public func removeFromFriend(_ value: Friend)

    @objc(addFriend:)
    @NSManaged public func addToFriend(_ values: NSSet)

    @objc(removeFriend:)
    @NSManaged public func removeFromFriend(_ values: NSSet)

}
