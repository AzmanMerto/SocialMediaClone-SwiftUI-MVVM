//
//  AuthViewModel.swift
//  TwitterCloneSwiftUI
//
//  Created by NomoteteS on 2.12.2022.
//

import SwiftUI
import Firebase

class AuthViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    @Published var didAuthenticationUser = false
    private var tempUserSession: FirebaseAuth.User?
    
    init() {
        self.userSession = Auth.auth().currentUser
    }
    
    
    func login(Email: String, Password: String) {
        
    }

    func register(Email: String, Password: String, Fullname: String, Username: String) {
        Auth.auth().createUser(withEmail: Email, password: Password) { result, error in
            if error != nil {
                print("DEBUG: User session is \(String(describing: self.userSession))")
                return
            }
            
            guard let user = result?.user else { return }
            self.tempUserSession = user
            
            let data = ["email" : Email,
                        "username" : Username.lowercased(),
                        "fullname" : Fullname,
                        "uid" : user.uid]
            
            Firestore.firestore().collection("users")
                .document(user.uid )
                .setData(data) { _ in
                    self.didAuthenticationUser = true
                }
        }
    }

    func signOut() {
        // sets user session to nil so we show login view
        userSession = nil
        
        // signs user out on server
        try? Auth.auth().signOut()
    }
    
    func uploadProfileImage(_ image: UIImage) {
        guard let uid = userSession?.uid else {return}
        
        // MARK: Upload to firebase storage
        ImageUploader.uploadImage(image: image) { profileImageUrl in
            Firestore.firestore().collection("users").document(uid)
                .updateData(["profileImageUrl": profileImageUrl]) { _ in
                    self.userSession = self.tempUserSession
                }
        }
    }
}

