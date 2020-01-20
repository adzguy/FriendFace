//
//  Friend+CoreDataProperties.swift
//  FriendFace
//
//  Created by Davron on 1/19/20.
//  Copyright © 2020 Davron. All rights reserved.
//
//

import Foundation
import CoreData


extension Friend {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Friend> {
        return NSFetchRequest<Friend>(entityName: "Friend")
    }

    @NSManaged public var id: String?
    @NSManaged public var name: String?
    @NSManaged public var origin: User?
    
    public var wrappedName: String {
        name ?? "Unknown friend"
    }
    
    public var wrappedId: String {
        id ?? "Unknown friend id"
    }

}
