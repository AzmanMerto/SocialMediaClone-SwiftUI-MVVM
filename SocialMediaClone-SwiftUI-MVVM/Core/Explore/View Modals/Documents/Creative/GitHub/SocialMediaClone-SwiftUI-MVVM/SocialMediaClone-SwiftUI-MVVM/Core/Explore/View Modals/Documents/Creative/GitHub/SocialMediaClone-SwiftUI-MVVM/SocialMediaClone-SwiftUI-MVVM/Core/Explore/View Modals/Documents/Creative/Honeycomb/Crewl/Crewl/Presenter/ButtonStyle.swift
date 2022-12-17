
import Foundation
import SwiftUI

//MARK: - Right Perspective Button
struct RightPerspectiveButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: 40, height: 40)
            .background(RoundedRectangle(cornerRadius: 10).stroke(Color.black,lineWidth: 3.19).background(content: {
                Color("AlternativeYellow")
                    .cornerRadius(14)
            }))
            .offset(x: configuration.isPressed ? -4 : 0, y: configuration.isPressed ? 4 : 0 )
            .background {
                Color(.black)
                    .frame(width: 42, height: 40)
                    .cornerRadius(10)
                    .offset(x: -4,y: 4)
            }
    }
}

//MARK: - Left Perspective Button
struct LeftPerspectiveButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: 40, height: 40)
            .background(RoundedRectangle(cornerRadius: 10).stroke(Color.black,lineWidth: 3.19).background(content: {
                Color("AlternativeYellow")
                    .cornerRadius(14)
            }))
            .offset(x: configuration.isPressed ? 4 : 0, y: configuration.isPressed ? 4 : 0 )
            .background {
                Color.black
                    .frame(width: 42, height: 40)
                    .cornerRadius(10)
                    .offset(x: 4,y: 4)
            }
    }
}

//MARK: - NotificationOne Button
struct NotificationOne: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(size: 10, weight: .medium, design: .default))
            .frame(width: 107, height: 44)
            .background(RoundedRectangle(cornerRadius: 8).stroke(lineWidth: 2.3)).background(content: {
                Color("MainBackground")
            }).offset(y: configuration.isPressed ? 4 : 0 )
//            .background{
//                Color.black
//                    .frame(width: 107, height: 44)
//                    .cornerRadius(8)
//                    .offset(y: 4)
//            }
    }
}

//MARK: - NotificationTwo Button
struct NotificationTwo: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(size: 10, weight: .medium, design: .default))
            .foregroundColor(.white)
            .frame(width: 84, height: 44)
            .background(RoundedRectangle(cornerRadius: 8).stroke(lineWidth: 2.3)).background(content: {
                Color("AlternativeBlue").cornerRadius(8)
            })
            .offset(y: configuration.isPressed ? 4 : 0 )
//            .background{
//                Color.black
//                    .frame(width: 86, height: 44)
//                    .cornerRadius(8)
//                    .offset(y: 4)
//            }
    }
}

//MARK: - Previews
struct MyButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("MainBackground")
                .ignoresSafeArea()
            Button(
                action: {
                
            }, label: {
               Text("Daha Sonra")
            })
            .buttonStyle(NotificationTwo())
        }
    }
}
