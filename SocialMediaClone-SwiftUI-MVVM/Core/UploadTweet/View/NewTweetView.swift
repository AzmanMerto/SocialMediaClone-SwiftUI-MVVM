//
//  NewTweetView.swift
//  TwitterCloneSwiftUI
//
//  Created by NomoteteS on 27.11.2022.
//

import SwiftUI
// I would party party baby
struct NewTweetView: View {
    @State private var caption = ""
    @Environment(\.presentationMode) var mode
    var body: some View {
        VStack{
            HStack{
                Button {
                    mode.wrappedValue.dismiss()
                } label: {
                    Text("Cancel")
                        .foregroundColor(.blue)
                }
                
                Spacer()
                
                Button {
                    
                } label: {
                    Text("Tweet")
                        .foregroundColor(.white)
                        .padding(.horizontal)
                        .padding(.vertical,8)
                        .background(Color.blue)
                        .clipShape(Capsule())
                }
            }.padding()
            
            HStack(alignment: .top) {
                Circle()
                    .frame(width: 64,height: 64)
                
                TextArea("What's happening?", text: $caption)
                    .frame(height: 150)
            }
            .padding()
            Spacer()
        }
    }
}

struct NewTweetView_Previews: PreviewProvider {
    static var previews: some View {
        NewTweetView()
    }
}
