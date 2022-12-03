//
//  ContentView.swift
//  TwitterCloneSwiftUI
//
//  Created by NomoteteS on 24.11.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var showMenu = false
    @EnvironmentObject var viewModel : AuthViewModel
    
    var body: some View {
        Group{
            if viewModel.userSession == nil {
                LoginView()
            }else {
                ZStack(alignment: .topLeading){
                    MainTabView()
                        .navigationBarHidden(showMenu == true)
                    
                    if showMenu {
                        ZStack {
                            Color.black.opacity(showMenu ? 0.25 : 0.0 )
                        }.onTapGesture {
                            withAnimation(.easeInOut(duration: 1)) {
                                showMenu = false
                            }
                        }.ignoresSafeArea()
                    }
                    
                    SideMenuView()
                        .frame(width: 300)
                        .offset(x: showMenu ? 0 : -300,y: 0)
                        .background(showMenu ? Color.white : Color.clear)
                }
                .onAppear{
                    showMenu = false
                }
                .navigationTitle("Home")
                .navigationBarTitleDisplayMode(.inline)
                
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button {
                            withAnimation {
                                showMenu.toggle()
                            }
                        } label: {
                            Circle()
                                .frame(width: 32)
                        }
                        
                    }
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
