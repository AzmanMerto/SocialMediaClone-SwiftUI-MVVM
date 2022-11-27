//
//  TweetRowView.swift
//  TwitterCloneSwiftUI
//
//  Created by NomoteteS on 24.11.2022.
//

import SwiftUI

struct TweetRowView: View {
    var body: some View {
        
        // MARK: Tweet
        VStack(alignment: .leading) {
            // MARK: - Tweet Image Circle
            HStack(alignment: .top, spacing: 12) {
                Circle()
                    .frame(width: 56)
                    .foregroundColor(Color.blue)
                VStack(alignment: .leading, spacing: 4 ) {
                    
                    // MARK: - Tweet Info
                    HStack {
                        Text("Mert Türedü")
                            .font(.subheadline).bold()
                        
                        Text("@NomoteteS")
                            .foregroundColor(.gray)
                            .font(.caption)
                        
                        Text("31s")
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
                    // MARK: - Tweet Space
                    Text("Hey I am codin")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                }
            }
            // MARK: - Tweet Action Buttons
            HStack() {
                Button {
                    // Action
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
                    // Action
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

struct TweetRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetRowView()
    }
}
