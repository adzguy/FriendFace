//
//  Network.swift
//  FriendFace
//
//  Created by Davron on 1/14/20.
//  Copyright © 2020 Davron. All rights reserved.
//

import Foundation

class Network: ObservableObject {
    
    //@Published var friends = FriendList(friends: [])
    @Published var users = [User]()
    
    private let api = "https://www.hackingwithswift.com/samples/friendface.json"
    
    init() {
        loadData()
    }
    
    private func loadData() {
        guard let url = URL(string: "\(api)") else {
            print("error url")
            return
        }
        
        URLSession.shared.dataTask(with: url) { data,_,_ in
            guard let data = data else {
                print("error data")
                return
            }
            
            let decoder = JSONDecoder()
            
            if let decodedData = try? decoder.decode([User].self, from: data) {
                //DispatchQueue.main.async {
                self.users = decodedData
                //}
            }
            else {
                print("Invalid response from server")
            }
        }.resume()
    }
}
