//
//  UserService.swift
//  SocialMediaClone-SwiftUI-MVVM
//
//  Created by NomoteteS on 15.12.2022.
//

import Firebase
import FirebaseFirestoreSwift

struct UserService {
    func fetcUser(withUid uid: String, completion: @escaping(User) -> Void){
        Firestore.firestore().collection("users")
            .document(uid)
            .getDocument { snapshot, _ in
                guard let snapshot = snapshot else {return}
                
                guard let user = try? snapshot.data(as: User.self) else {return}
                completion(user)
            }
    }
}
