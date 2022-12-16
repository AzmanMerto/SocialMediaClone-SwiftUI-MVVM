//
//  User.swift
//  SocialMediaClone-SwiftUI-MVVM
//
//  Created by NomoteteS on 15.12.2022.
//

import FirebaseFirestoreSwift

// MARK: User object 
struct User : Identifiable, Decodable {
    @DocumentID var id: String?
    let username: String
    let fullname: String
    let profileImageUrl: String
    let email: String
}
