//
//  UserDetailView.swift
//  FriendFace
//
//  Created by Davron on 1/15/20.
//  Copyright © 2020 Davron. All rights reserved.
//

import SwiftUI

struct UserDetailView: View {
    
    var user: UserModel
    var users: [UserModel]
    
    //let userCoreData: User
    //let userCoreDatas: [User]
    
    var body: some View {
        ScrollView(.vertical) {
                
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
                
                Text("Friends")
                    .foregroundColor(.gray)
                List(user.friends){friend in
                    NavigationLink(destination: FriendView(friend: friend, users: self.users, user: self.user) ){
                        HStack{
                            Image(systemName: "person.circle")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 70, height: 70)
                            
                            VStack{
                                Text("\(friend.name)")
                                    .fontWeight(.medium )
                            }
                        }
                        Spacer()
                    }
                .buttonStyle(PlainButtonStyle())
                }
            .scaledToFit()
            }
            .padding()
            Spacer()
        }
        .navigationBarTitle(Text("Profile"), displayMode: .inline)
    }
}

//struct UserDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        UserDetailView()
//    }
//}
