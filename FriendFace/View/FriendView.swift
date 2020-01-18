//
//  FriendView.swift
//  FriendFace
//
//  Created by Davron on 1/16/20.
//  Copyright © 2020 Davron. All rights reserved.
//

import SwiftUI

struct FriendView: View {
    
    var friend: Friend
    var user: User
    var users: [User]
    
    var body: some View {
        VStack(alignment: .leading){
            
            Text("\(user.name)")
                .font(.largeTitle)
            
            Text("\(user.address)")
            
            Text("\(user.isActive ? "Active" : "Not Active")")
                .foregroundColor(user.isActive ? .green : .red)
                .padding(.bottom, 20)
            
            HStack{
                Text("About:")
                    .foregroundColor(.gray)
                Spacer()
            }
            
            Text("\(user.about)")
            Spacer()
        }
        .padding()
        .navigationBarTitle("Friend")
    }
    
    
    init(friend: Friend, users: [User], user: User) {
        self.friend = friend
        self.users = users
        
        var match = User(id: "", isActive: false, name: "", company: "", address: "", about: "", registered: "", friends: [friend], tags: user.tags)
        for user in users {
            if friend.id == user.id {
                match = User(id: user.id, isActive: user.isActive, name: user.name, company: user.company, address: user.address, about: user.about, registered: user.registered, friends: user.friends, tags: user.tags)
            }
        }
        self.user = match
    }
}

//struct FriendView_Previews: PreviewProvider {
//    static var previews: some View {
//        FriendView(user: User(id: "", isActive: true, name: "", company: "", address: "", about: "", registered: "", friends: [], tags: []))
//    }
//}
