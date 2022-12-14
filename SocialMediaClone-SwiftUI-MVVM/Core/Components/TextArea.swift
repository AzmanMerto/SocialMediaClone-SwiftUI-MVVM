//
//  TextArea.swift
//  TwitterCloneSwiftUI
//
//  Created by NomoteteS on 27.11.2022.
//

import SwiftUI

struct TextArea: View {
    
    @Binding var text: String
    let PlaceHolder: String
    
    init(_ placeHolder: String , text: Binding<String>){
        self.PlaceHolder = placeHolder
        self._text = text
        UITextField.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            
            if text.isEmpty{
                Text(PlaceHolder)
                    .foregroundColor(Color(.systemPink))
                    .padding(.horizontal,8)
                    .padding(.vertical,12)
            }
            TextEditor(text: $text)
                .padding(4)
        }
        .font(.body)
    }
}

