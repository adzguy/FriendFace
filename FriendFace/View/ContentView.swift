//
//  ContentView.swift
//  FriendFace
//
//  Created by Davron on 1/13/20.
//  Copyright © 2020 Davron. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    //@Environment(\.managedObjectContext) var moc
    @ObservedObject var network = Network()
    //@FetchRequest(entity: User.entity(), sortDescriptors: []) var users: FetchedResults<User>
    
//    init() {
//        for user in network.users {
//            let userCd = User(context: moc)
//            userCd.id = user.id
//            userCd.name = user.name
//            userCd.about = user.about
//            userCd.address = user.address
//            userCd.isActive = user.isActive
//            userCd.company = user.company
//
//            try? moc.save()
//        }
//    }
    var body: some View {
        NavigationView {
            VStack{
                List(network.users){ user in
                    NavigationLink(destination: UserDetailView(user: user, users: self.network.users) ) {
                        UserRowView(user: user)
                    }
                }
            }
        .navigationBarTitle(Text("Users"))
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView(userFriend: <#<<error type>>#>)
//    }
//}
