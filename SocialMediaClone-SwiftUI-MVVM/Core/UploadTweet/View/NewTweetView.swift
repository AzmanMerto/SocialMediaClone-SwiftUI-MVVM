//
//  NewTweetView.swift
//  TwitterCloneSwiftUI
//
//  Created by NomoteteS on 27.11.2022.
//

import SwiftUI
import Kingfisher

struct NewTweetView: View {
    @State private var caption = ""
    @Environment(\.presentationMode) var mode
    @EnvironmentObject var authViewModel: AuthViewModel
    @ObservedObject var viewModel = UploadTweetViewModel()
    
    var body: some View {
        VStack{
            HStack{
                Button {
                    mode.wrappedValue.dismiss()
                } label: {
                    Text("Cancel")
                        .foregroundColor(.blue)
                }
                
                Spacer()
                
                Button {
                    viewModel.uploadTweet(withCaption: caption)
                } label: {
                    Text("Tweet")
                        .foregroundColor(.white)
                        .padding(.horizontal)
                        .padding(.vertical,8)
                        .background(Color.blue)
                        .clipShape(Capsule())
                }
            }.padding()
            
            HStack(alignment: .top) {
                if let user = authViewModel.currentUser {
                    KFImage(URL(string: user.profileImageUrl))
                        .resizable()
                        .scaledToFill()
                        .clipShape(Circle())
                        .frame(width: 64)
                }
                
                TextArea("What's happening?", text: $caption)
                    .frame(height: 150)
            }
            .padding()
            Spacer()
        }
    }
}

struct NewTweetView_Previews: PreviewProvider {
    static var previews: some View {
        NewTweetView()
    }
}
