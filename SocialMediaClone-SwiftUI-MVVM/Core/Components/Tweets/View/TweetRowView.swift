//
//  TweetRowView.swift
//  TwitterCloneSwiftUI
//
//  Created by NomoteteS on 24.11.2022.
//

import SwiftUI
import Kingfisher

struct TweetRowView: View {
    let viewModel : TweetRowViewModel
    
    init(tweet: Tweet) {
        self.viewModel = TweetRowViewModel(tweet: tweet)
    }
    
    var body: some View {
        
        // MARK: Tweet
        VStack(alignment: .leading) {
            // MARK: - Tweet Image Circle
            if let user = viewModel.tweet.user {
                HStack(alignment: .top, spacing: 12) {
                    
                    KFImage(URL(string: user.profileImageUrl))
                        .resizable()
                        .scaledToFill()
                        .clipShape(Circle())
                        .frame(width: 56)

                    VStack(alignment: .leading, spacing: 4 ) {
                        
                        // MARK: - Tweet Info
                      
                            HStack {
                                Text(user.fullname)
                                    .font(.subheadline).bold()
                                
                                Text("@\(user.username)")
                                    .foregroundColor(.gray)
                                    .font(.caption)
                                
                                Text("31s")
                                    .foregroundColor(.gray)
                                    .font(.caption)
                            }
                        
                        // MARK: - Tweet Space
                        Text(viewModel.tweet.caption)
                            .font(.subheadline)
                            .multilineTextAlignment(.leading)
                    }
                }
            }
            // MARK: - Tweet Action Buttons
            HStack() {
                Button {
                    
                } label: {
                    Image(systemName: "bubble.left")
                        .font(.subheadline)
                }
                
                Spacer()
                
                Button {
                    // Action
                } label: {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.subheadline)
                }
                
                Spacer()
                
                Button {
                    viewModel.likeTweet()
                } label: {
                    Image(systemName: "heart")
                        .font(.subheadline)
                }
                
                Spacer()
                
                Button {
                    // Action
                } label: {
                    Image(systemName: "bookmark")
                        .font(.subheadline)
                }
            }
            .padding()
            .foregroundColor(.gray)
            
            Divider()
        }.padding()
    }
}


