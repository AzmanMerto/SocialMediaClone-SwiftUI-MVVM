//
//  TweetRowViewModel.swift
//  SocialMediaClone-SwiftUI-MVVM
//
//  Created by NomoteteS on 18.12.2022.
//

import Foundation

class TweetRowViewModel: ObservableObject {
    let tweet: Tweet
    private let service = TweetService()
    
    init(tweet: Tweet) {
        self.tweet = tweet
    }
    
    func likeTweet() {
        service.likeTweet(tweet)
    }
}
