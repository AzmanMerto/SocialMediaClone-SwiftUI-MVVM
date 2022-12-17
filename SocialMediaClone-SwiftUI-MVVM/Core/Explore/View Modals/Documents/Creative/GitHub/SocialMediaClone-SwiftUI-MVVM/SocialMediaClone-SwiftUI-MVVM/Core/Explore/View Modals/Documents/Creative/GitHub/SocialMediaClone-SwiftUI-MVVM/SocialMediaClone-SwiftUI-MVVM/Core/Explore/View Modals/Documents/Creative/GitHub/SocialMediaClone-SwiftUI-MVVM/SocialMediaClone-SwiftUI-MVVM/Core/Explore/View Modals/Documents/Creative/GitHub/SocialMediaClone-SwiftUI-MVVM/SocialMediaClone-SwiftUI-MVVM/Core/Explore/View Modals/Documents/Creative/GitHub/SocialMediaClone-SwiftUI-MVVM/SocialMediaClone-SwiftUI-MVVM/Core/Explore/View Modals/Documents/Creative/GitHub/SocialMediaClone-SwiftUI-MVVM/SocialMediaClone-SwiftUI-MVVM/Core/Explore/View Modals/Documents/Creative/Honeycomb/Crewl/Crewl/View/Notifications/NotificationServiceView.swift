//
//  NotificationServiceView.swift
//  Crewl
//
//  Created by NomoteteS on 3.12.2022.
//

import SwiftUI

struct NotificationServiceView: View {
    @State var tag:Int? = nil
    
    var body: some View {
        ZStack {
            NavigationLink("", destination: InputPassiveView().navigationBarHidden(true), tag: 1, selection: $tag)
            
            //MARK: - Image & Text
            Color("MainBackground")
                .ignoresSafeArea()
            VStack {
                Image("emote_fox_notification")
                    .resizable()
                    .frame(width: 194, height: 221)
                
                VStack(spacing: 10) {
                    Text("Özel indirimler kazan")
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .foregroundColor(Color("MainTitle-Button-Stroke"))
                    
                    Text("Etrafındaki etkinlikleri sana göstermemiz için lokasyon izni vermen gerekiyor. Gerekmiyor mu?")
                        .frame(width: 250)
                        .font(.footnote)
                        .foregroundColor(Color("SubtitleDarkGray"))
                }.multilineTextAlignment(.center)
                
                HStack(spacing: 15){
                    NavigationLink {
                        InputPassiveView()
                            .navigationBarHidden(true)
                    } label: {
                        Text("Daha sonra")
                    }.buttonStyle(NotificationOne())
                    
                    Button {
                        let authOptions: UNAuthorizationOptions = [.alert, .badge, .sound]
                        UNUserNotificationCenter.current().requestAuthorization(
                          options: authOptions,
                          completionHandler: {_, _ in })
                        self.tag = 1
                    } label: {
                        Text("İzin ver")
                    }.buttonStyle(NotificationTwo())
                }.padding(.vertical)
            }
        }
    }
}

struct NotificationServiceView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationServiceView()
    }
}
