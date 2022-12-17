//
//  UploadTweetViewModel.swift
//  SocialMediaClone-SwiftUI-MVVM
//
//  Created by NomoteteS on 17.12.2022.
//

import Foundation

class UploadTweetViewModel: ObservableObject {
    @Published var didUploadTweet = false
    let service = TweetService()
    
    func uploadTweet(withCaption caption: String) {
        service.uploadTweet(caption: caption) { success in
            if success {
                self.didUploadTweet = true
            } else {
                // show error massage to user...
            }
        }
    }
}
