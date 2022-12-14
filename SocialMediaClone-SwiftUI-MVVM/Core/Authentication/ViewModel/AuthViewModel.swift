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
            
            print("DEBUG: Registered user successfully")
            print("DEBUG: User is \(String(describing: self.userSession))")
            
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
        userSession = nil
        try? Auth.auth().signOut()
    }
    
}

