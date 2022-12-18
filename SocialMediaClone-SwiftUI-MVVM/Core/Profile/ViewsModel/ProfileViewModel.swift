//
//  ProfileViewModel.swift
//  SocialMediaClone-SwiftUI-MVVM
//
//  Created by NomoteteS on 18.12.2022.
//

import Foundation

class ProfileViewModel: ObservableObject {
    @Published var tweets = [Tweet]()
    private let service = TweetService()
    let user: User
    
    init(user:User) {
        self.user = user
        self.fetcUserTweets()
    }

    
    func fetcUserTweets() {
        guard let uid = user.id else { return }
        service.fetcTweets(forUid: user.id ?? "") { tweets in
            self.tweets = tweets
            
            for i in 0..< tweets.count() {
                self.tweets[i].user = self.user
            }
        }
    }
}
