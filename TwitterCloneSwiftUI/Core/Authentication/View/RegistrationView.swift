//
//  RegisterView.swift
//  TwitterCloneSwiftUI
//
//  Created by NomoteteS on 27.11.2022.
//

import SwiftUI

struct RegistrationView: View {
    
    @State private var email = ""
    @State private var username = ""
    @State private var fullname = ""
    @State private var password = ""
    @Environment(\.presentationMode) var presentationMode
    

    var body: some View {
        VStack{
            AuthHeaderView(title1: "Get started.", title2: "Create your account")
            
            VStack(spacing:40) {
                CustomInputField(ImageName: "envelope", placeholder: "Email", text: $email)
                CustomInputField(ImageName: "person", placeholder: "Username", text: $username)
                CustomInputField(ImageName: "person", placeholder: "Fullname", text: $fullname)
                CustomInputField(ImageName: "lock", placeholder: "Password", text: $password)
            }.padding(32)
            
            Button {
                
            } label: {
                Text("Sign Up")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 340, height: 50)
                    .background(Color.blue)
                    .clipShape(Capsule())
                    .padding()
            }.shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 0)
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                HStack {
                    Text("Don't have an account ?")
                    
                    Text("Sign In")
                        .bold()
                }
                .font(.footnote)
                .padding(.bottom,32)
            }
            .padding(.bottom)

                
            
            Spacer()
        }.ignoresSafeArea()
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
