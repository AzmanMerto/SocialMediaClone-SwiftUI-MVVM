//
//  Tweet.swift
//  SocialMediaClone-SwiftUI-MVVM
//
//  Created by NomoteteS on 17.12.2022.
//

import FirebaseFirestoreSwift
import Firebase

struct Tweet: Identifiable, Decodable {
    @DocumentID var id: String?
    let caption: String
    let timestamp: Timestamp
    let uid: String
    var likes : Int
    
    var user: User?
    var didLike: Bool? = false
}
