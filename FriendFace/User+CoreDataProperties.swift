//
//  User+CoreDataProperties.swift
//  FriendFace
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

    @NSManaged public var id: String?
    @NSManaged public var isActive: Bool
    @NSManaged public var name: String?
    @NSManaged public var company: String?
    @NSManaged public var address: String?
    @NSManaged public var about: String?
    @NSManaged public var friend: NSSet?
    
    public var wrappedId: String {
        id ?? "Unknown id"
    }
    
    public var wrappedName: String {
        name ?? "Unknown name"
    }
    
    public var wrappedCompany: String {
        company ?? "Unknown company"
    }
    
    public var wrappedAddress: String {
        address ?? "Unknown address"
    }
    
    public var wrappedAbout: String {
        about ?? "Unknown about"
    }
    
    public var friendArray: [Friend] {
        let set = friend as? Set<Friend> ?? []
        return set.sorted {
            $0.wrappedName < $1.wrappedName
        }
    }

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
