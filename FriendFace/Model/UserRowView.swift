//
//  UserRowView.swift
//  FriendFace
//
//  Created by Davron on 1/15/20.
//  Copyright © 2020 Davron. All rights reserved.
//

import SwiftUI

struct UserRowView: View {
    
    var user: UserModel
    //let userCoreData: User
    
    var body: some View {
        HStack {
            
            Image(systemName: user.isActive ? "person.crop.circle.fill.badge.checkmark" : "person.crop.circle.fill.badge.xmark")
                .resizable()
                .scaledToFit()
                .foregroundColor(user.isActive ? .green : .red)
                .frame(width: 65, height: 65)

            VStack{
                HStack {
                    Text("Name:")
                        .fontWeight(.heavy)
                    Text("\(user.name)")
                    Spacer()
                }
                HStack{
                    Text("Status:")
                        .fontWeight(.heavy)
                    Text("\(user.isActive ? "Active" : "Not Active")")
                        //.foregroundColor(user.isActive ? .green : .red)
                    Spacer()
                }
                
                HStack{
                    Text("Company:")
                        .fontWeight(.heavy)
                    Text("\(user.company)")
                    Spacer()
                }
            }
        }
        //.padding()
    }
}

//struct UserRowView_Previews: PreviewProvider {
//    static var previews: some View {
//        UserRowView()
//    }
//}
