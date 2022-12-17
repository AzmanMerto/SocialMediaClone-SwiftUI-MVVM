//
//  TweetService.swift
//  SocialMediaClone-SwiftUI-MVVM
//
//  Created by NomoteteS on 17.12.2022.
//

import Firebase

struct TweetService {
    func uploadTweet(caption: String, completion: @escaping(Bool) -> Void) {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        
        let data = ["uid" : uid,
                            "caption": caption,
                            "likes": 0,
                            "timestamp": Timestamp(date: Date())] as [String : Any]
        
        Firestore.firestore().collection("tweets").document()
            .setData(data) {  error in
                if let error = error {
                    completion(false)
                        return
                }
                completion(true)
            }
    }
    
    func fetchTweet(completion: @escaping([Tweet]) -> Void) {
        Firestore.firestore().collection("tweet").getDocuments { snapshot, _ in
            guard let documents = snapshot?.documents else { return }
            
            let tweets = documents.compactMap({ try? $0.data(as: Tweet.self)})
            completion(tweets)
        }
    }
}
