//
//  SideMenuView.swift
//  TwitterCloneSwiftUI
//
//  Created by NomoteteS on 25.11.2022.
//

import SwiftUI
import Kingfisher


struct SideMenuView: View {
    
    @EnvironmentObject var AutViewModel : AuthViewModel
    
    var body: some View {
        if let user = AutViewModel.currentUser {
            /* miss navigayion */
                VStack(alignment: .leading,spacing: 32){
                    VStack(alignment: .leading) {
                        KFImage(URL(string: user.profileImageUrl))
                            .resizable()
                            .scaledToFill()
                            .clipShape(Circle())
                            .frame(width: 48)
                        
                        VStack(alignment:.leading,spacing: 10) {
                            Text(user.fullname)
                                .font(.headline)
                            
                            Text("@\(user.username)")
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
                                AutViewModel.signOut()
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
