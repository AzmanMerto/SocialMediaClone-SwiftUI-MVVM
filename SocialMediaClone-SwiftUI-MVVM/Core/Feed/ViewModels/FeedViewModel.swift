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
    
    init() {
        fetchTweet()
    }
    
    func fetchTweet() {
        service.fetchTweet { tweets in
            self.tweets = tweets
        }
    }
}
