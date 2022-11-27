//
//  ProfileView.swift
//  TwitterCloneSwiftUI
//
//  Created by NomoteteS on 24.11.2022.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var selectedFilter: TweetFilterViewModel = .tweets
    @Environment(\.presentationMode) var mode
    @Namespace var animation
    
    var body: some View {
        VStack(alignment: .leading) {
            
            // MARK: - Profile HeaderView
            ZStack(alignment: .bottomLeading) {
                Color.blue
                    .ignoresSafeArea()
                VStack {
                    Button {
                        mode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "arrow.left")
                            .resizable()
                            .frame(width: 20, height: 16)
                            .foregroundColor(.white)
                            .offset(x:16,y: 12)
                    }

                    Circle()
                        .frame(width: 72)
                        .offset(x:16,y:34)
                }
            }.frame(height: 96)
            
            // MARK: - Profile Button and Bell
            HStack(spacing: 12) {
                Spacer()
                
                Image(systemName: "bell.badge")
                    .font(.title3)
                    .padding(6)
                    .overlay(Circle().stroke(Color.gray,lineWidth: 0.75))
                
                Button {
                    //Action
                } label: {
                    Text("Edit Profile")
                        .font(.subheadline).bold()
                        .frame(width: 128, height: 32)
                        .foregroundColor(.black)
                        .overlay(RoundedRectangle(cornerRadius: 26).stroke(Color.gray,lineWidth: 0.75))
                }
                
            }.padding(.trailing)
            
            // MARK: - Profile User Info
            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    Text("Mert Türedü")
                        .font(.title2).bold()
                    
                    Image(systemName: "checkmark.seal.fill")
                        .foregroundColor(.blue)
                }
                Text("@NomotetS")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                Text("Codinn")
                    .font(.subheadline)
                    .padding(.vertical)
                
                // Location and link
                HStack(spacing: 24) {
                    HStack {
                        Image(systemName: "mappin.and.ellipse")
                        
                        Text("Cyprus,Lefkoşa")
                    }
                    
                    HStack {
                        Image(systemName: "link")
                        
                        Text("Cyprus,Lefkoşa")
                    }
                }.foregroundColor(.gray).font(.caption)
                
                // Following and Followers
               UserStatsView()
                    .padding(.vertical)
                
            }.padding(.leading )
            
            // MARK: - Profile TweetBar
            HStack {
                ForEach(TweetFilterViewModel.allCases, id: \.rawValue) { item in
                    VStack {
                        Text(item.title)
                            .font(.subheadline)
                            .fontWeight(selectedFilter == item ? .semibold : .regular )
                            .foregroundColor(selectedFilter == item ? .black : .gray)
                        
                        if selectedFilter == item {
                            Capsule()
                                .foregroundColor(.blue)
                                .frame(height: 2)
                                .matchedGeometryEffect(id: "filter", in: animation)
                        } else {
                            Capsule()
                                .foregroundColor(.clear)
                                .frame(height: 2)
                        }
                    }.onTapGesture {
                        withAnimation(.easeInOut) {
                            self.selectedFilter = item
                        }
                    }
                }
            }.overlay(Divider().offset(x:0,y:16))
            
            // MARK: - Profile Tweets
            ScrollView{
                LazyVStack{
                    ForEach(0...9, id: \.self) {_ in
                        TweetRowView()
                    }
                }
            }
            
            Spacer()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

//extension ProfileView {
//    var HeaderView: some View {
//
//    }
//}
