//
//  SideMenuView.swift
//  TwitterCloneSwiftUI
//
//  Created by NomoteteS on 25.11.2022.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading,spacing: 32){
                VStack(alignment: .leading) {
                    Circle()
                        .frame(width: 48)
                    
                    VStack(alignment:.leading,spacing: 10) {
                        Text("NomoteteS")
                            .font(.headline)
                        
                        Text("@NomoteteS")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                    UserStatsView()
                        .padding(.vertical)
                }.padding()
                
                ForEach(SideMenuViewModel.allCases, id: \.rawValue) { ViewModel in
                    if ViewModel == .profile {
                        NavigationLink {
                            ProfileView()
                        } label: {
                            SideMenuOptionRowView(ViewModel: ViewModel)
                        }
                    }else if ViewModel == .logout {
                        Button {
                            print("User is logout...")
                        } label: {
                            SideMenuOptionRowView(ViewModel: ViewModel )
                        }

                    }else {
                        SideMenuOptionRowView(ViewModel: ViewModel )
                    }
                }
                Spacer()
            }
        }
      
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
