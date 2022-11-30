//
//  CustomInputField.swift
//  TwitterCloneSwiftUI
//
//  Created by NomoteteS on 28.11.2022.
//

import SwiftUI

struct CustomInputField: View {
    let ImageName: String
    let placeholder: String
    @Binding var text: String
    
    var body: some View {
        VStack {
            HStack{
                Image(systemName: ImageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 28,height: 28)
                    .foregroundColor(.gray)
                
                TextField(placeholder, text: $text)
            }
            Divider().foregroundColor(.gray)
        }.padding()
    }
}

struct CustomInputField_Previews: PreviewProvider {
    static var previews: some View {
        CustomInputField(ImageName: "envelope", placeholder: "Email", text: .constant(""))
    }
}
