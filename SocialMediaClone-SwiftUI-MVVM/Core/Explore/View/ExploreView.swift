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
            SearchBar(text: $viewModel.searchText)
                .padding()
                
            ScrollView {
                LazyVStack {
                    ForEach( viewModel.searchableUsers ) {  User in
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
