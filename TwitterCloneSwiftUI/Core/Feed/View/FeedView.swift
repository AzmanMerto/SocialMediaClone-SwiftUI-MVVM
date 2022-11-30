//
//  FeedView.swift
//  TwitterCloneSwiftUI
//
//  Created by NomoteteS on 24.11.2022.
//

import SwiftUI

struct FeedView: View {
    @State private var ShowNewTweetView = false
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView {
                LazyVStack {
                    ForEach(1...25,id: \.self) { _ in
                        TweetRowView()
                    }
                }
            }
            Button {
                ShowNewTweetView.toggle()
            } label: {
                Image(systemName:"figure.roll")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 28,height: 28)
                    .padding()
            }
            .background(Color.blue)
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding()
            .fullScreenCover(isPresented: $ShowNewTweetView) {
                NewTweetView()
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
