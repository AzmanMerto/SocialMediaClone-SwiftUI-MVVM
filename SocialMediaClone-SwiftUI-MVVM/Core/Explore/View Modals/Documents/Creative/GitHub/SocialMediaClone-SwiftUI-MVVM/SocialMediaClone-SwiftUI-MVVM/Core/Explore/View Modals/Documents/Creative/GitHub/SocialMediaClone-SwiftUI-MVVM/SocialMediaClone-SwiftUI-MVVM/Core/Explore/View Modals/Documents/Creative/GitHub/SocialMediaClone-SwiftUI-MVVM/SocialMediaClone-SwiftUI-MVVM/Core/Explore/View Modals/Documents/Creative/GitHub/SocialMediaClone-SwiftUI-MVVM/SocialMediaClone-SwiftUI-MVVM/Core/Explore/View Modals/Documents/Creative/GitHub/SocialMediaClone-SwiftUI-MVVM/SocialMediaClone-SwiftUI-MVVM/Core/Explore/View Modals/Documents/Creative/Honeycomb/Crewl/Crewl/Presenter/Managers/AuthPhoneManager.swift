//
//  AuthManager.swift
//  Crewl
//
//  Created by NomoteteS on 6.12.2022.
//

import Foundation
import FirebaseAuth

class AuthPhoneManager {
    static let shared = AuthPhoneManager()
    private let auth = Auth.auth()
    
    public func startAuth(phoneNumber: String, competion: @escaping (Bool) -> Void) {
        
    }
    
    public func verifyCode(smsCode: String, competion: @escaping (Bool) -> Void) {
        
    }
    
}
