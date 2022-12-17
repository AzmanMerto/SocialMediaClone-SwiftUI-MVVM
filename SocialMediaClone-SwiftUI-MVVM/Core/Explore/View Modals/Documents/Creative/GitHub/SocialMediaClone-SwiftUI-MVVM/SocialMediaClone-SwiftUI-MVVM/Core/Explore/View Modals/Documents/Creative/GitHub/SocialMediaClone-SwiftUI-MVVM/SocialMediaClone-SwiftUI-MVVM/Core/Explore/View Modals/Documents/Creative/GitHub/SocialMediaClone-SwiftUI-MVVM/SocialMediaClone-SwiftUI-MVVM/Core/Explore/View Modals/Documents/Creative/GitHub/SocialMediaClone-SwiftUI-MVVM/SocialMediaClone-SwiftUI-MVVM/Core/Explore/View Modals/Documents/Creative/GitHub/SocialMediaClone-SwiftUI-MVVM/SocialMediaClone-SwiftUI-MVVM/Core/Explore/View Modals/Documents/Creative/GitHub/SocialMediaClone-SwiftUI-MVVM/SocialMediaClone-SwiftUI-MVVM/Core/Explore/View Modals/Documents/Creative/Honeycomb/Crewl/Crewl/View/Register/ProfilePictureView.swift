//
//  ProfilePicture.swift
//  Crewl
//
//  Created by NomoteteS on 4.12.2022.
//

import SwiftUI

struct ProfilePictureView: View {
    @State private var showImagePicker = false
    @State private var selectedImage : UIImage?
    @State private var profileImage : Image?
    
    func loadImage() {
        guard let selectedImage = selectedImage else { return }
        profileImage = Image(uiImage: selectedImage)
    }
    
    var body: some View {
        ZStack{
            Color("MainBackground")
                .ignoresSafeArea()
            
            VStack(alignment: .center, spacing: 6) {
                VStack(spacing: 6){
                    Text("Profil Fotoğrafı")
                        .font(.system(size: 24, weight: .bold, design: .default))
                        .foregroundColor(Color("MainTitle-Button-Stroke"))
                    
                    Text("Profil fotoğrafın farklı hesaplar tarafından görülebilir.")
                        .font(.system(size: 14, weight: .regular, design: .default))
                        .foregroundColor(Color("SubtitleDarkGray"))
                    
                }.padding(.bottom,50)
                
                //MARK: - Image
                VStack{
                    Image("ImagePagePhoto")
                        .resizable()
                        .cornerRadius(10)
                        .frame(width: 288, height: 288)
                        .sheet(isPresented: $showImagePicker, onDismiss: loadImage) {
                            ImagePicker(selectedImage: $selectedImage)
                        }.background(RoundedRectangle(cornerRadius: 10)
                            .frame(width: 290, height: 290)
                            .foregroundColor(Color("MainTitle-Button-Stroke"))
                        )
                    //MARK: - Add Picture from Gallery
                    VStack{
                        VStack(spacing: 13){
                            Button {
                                showImagePicker.toggle()
                            } label: {
                                VStack(alignment: .leading, spacing:10 ){
                                    HStack(spacing: 65){
                                        Image(systemName: "photo")
                                            .resizable()
                                            .frame(width: 20, height: 20)
                                            .foregroundColor(Color("MainTitle-Button-Stroke"))
                                        
                                        Text("Galeriden Seç")
                                            .font(.system(size: 12, weight: .bold, design: .default))
                                            .foregroundColor(Color("MainTitle-Button-Stroke"))
                                    }.padding(.trailing,91)
                                }
                            }.background{
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color("MainTitle-Button-Stroke"))
                                    .frame(width: 274, height: 44)
                            }.padding()
                                
                            //MARK: - Add Picture from Shot
                                Button {
                                    showImagePicker.toggle()
                                } label: {
                                    HStack{
                                       
                                        
                                        Text("Galeriden Seç")
                                            .font(.system(size: 12, weight: .bold, design: .default))
                                            .foregroundColor(Color("MainTitle-Button-Stroke"))
                                    }
                                }.background{
                                    RoundedRectangle(cornerRadius: 8)
                                        .stroke(Color("MainTitle-Button-Stroke"))
                                        .frame(width: 274, height: 44)
                                }.padding()
                        }
                    }.padding(.top)
                }.padding(.top)
                
                Spacer()
                
                //MARK: - Back Button
                HStack {
                    NavigationLink{
                        Onboarding5View()
                            .navigationBarHidden(true)
                    } label: {
                        Image(systemName: "chevron.left")
                            .resizable()
                            .frame(width: 8, height: 16)
                    }.buttonStyle(LeftPerspectiveButton())
                    
                    Spacer()
                    
                    //MARK: - Next Button
                    NavigationLink {
                        
                    } label: {
                        Image(systemName: "chevron.right")
                            .resizable()
                            .frame(width: 8, height: 16)
                    }.buttonStyle(RightPerspectiveButton())
                }.padding()
                    .padding(.bottom)
            }
        }
    }
}

struct ProfilePicture_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePictureView()
    }
}

