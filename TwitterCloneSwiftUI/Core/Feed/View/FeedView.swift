//
//  FeedView.swift
//  TwitterCloneSwiftUI
//
//  Created by NomoteteS on 24.11.2022.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        VStack {
            ScrollView {
                LazyVStack(spacing: 3) {
                    ForEach(1...25,id: \.self) { _ in
                        TweetRowView()
                    }
                }
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
