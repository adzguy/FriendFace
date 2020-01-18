//
//  ContentView.swift
//  FriendFace
//
//  Created by Davron on 1/13/20.
//  Copyright © 2020 Davron. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var network = Network()
    
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
