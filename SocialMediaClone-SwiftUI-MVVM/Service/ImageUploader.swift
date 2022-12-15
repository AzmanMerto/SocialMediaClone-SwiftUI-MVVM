//
//  ImageUploader.swift
//  SocialMediaClone-SwiftUI-MVVM
//
//  Created by NomoteteS on 15.12.2022.
//

import Firebase
import FirebaseStorage
import UIKit
import SwiftUI

struct ImageUploader {
    
    static func uploadImage(image: UIImage,, completion: @escaping(String) -> Void) {
        guard let imageData = image.jpegData(compressionQuality: 0.5) else {return}
        
        let filename = NSUUID().uuidString
        let ref = Storage.storage().reference(withPath: "/profile_image/\(filename)")
        
        ref.putData(imageData, metadata: nil) { _, error in
            if let error = error {
            }
            
            ref.downloadURL { imageUrl, _ in
                guard let imageUrl = imageUrl?.absoluteString else { return}
                completion(imageUrl)
            }
        }
    }
}
