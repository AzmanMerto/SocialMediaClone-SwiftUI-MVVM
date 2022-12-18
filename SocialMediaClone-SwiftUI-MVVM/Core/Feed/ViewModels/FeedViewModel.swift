//
//  FeedViewModel.swift
//  SocialMediaClone-SwiftUI-MVVM
//
//  Created by NomoteteS on 17.12.2022.
//

import Foundation

class FeedViewModel: ObservableObject {
    @Published var tweets = [Tweet]()
    let service = TweetService()
    let userService = UserService()
    
    init() {
        fetchTweet()
    }
    
    func fetchTweet() {
        service.fetchTweet { tweets in
            self.tweets = tweets
            
            for i in 0 ..< tweets.count {
                let uid = tweets[i].uid
                
                tweets.forEach { tweet in
                    let uid  = tweet.uid
                    
                    self.userService.fetcUser(withUid: uid) { user in
                        self.tweets[i].user = user 
                    }
                }
            }
            
        }
    }
}

