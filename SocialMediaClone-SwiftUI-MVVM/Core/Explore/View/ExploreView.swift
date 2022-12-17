//
//  ExploreView.swift
//  TwitterCloneSwiftUI
//
//  Created by NomoteteS on 24.11.2022.
//

import SwiftUI

struct ExploreView: View {
    
    @ObservedObject var viewModel = ExploreViewModel()
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVStack {
                    ForEach( viewModel.users ) {  User in
                        NavigationLink {
                            ProfileView(user: User)
                        } label: {
                            UserRowView(user: User)
                        }

                    }
                }
            }
        }
        .navigationTitle("Explorer")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
