//
//  SplashScreenView.swift
//  Eleven
//
//  Created by M Haris Sitompul on 24/02/23.
//

import SwiftUI

struct SplashScreenView: View {
    var body: some View {
        ZStack{
            Color("AccountPageColor")
                .ignoresSafeArea()
            VStack{
                Spacer()
                Image("Saly2")
                    .resizable()
                    .frame(width: 365, height: 365)
                    .padding(.bottom,35)
                Text("You’re all set up!")
                    .font(.custom("LibreFranklin-Bold", size: 24))
                    .foregroundColor(Color("PrimaryColor"))
                    .padding(.bottom,17)
                VStack(spacing:5){
                    Text("From now on you can use your phone number to identify")
                        .font(.custom("LibreFranklin-Medium", size: 12))
                    Text("yourself when you log in or confirm transactions.")
                        .font(.custom("LibreFranklin-Medium", size: 12))
                }.foregroundColor(Color("PrimaryColor3"))
                    .padding(.bottom,30)
                ZStack{
                    RoundedRectangle(cornerRadius: 50)
                        .frame(width: 316, height: 49)
                        .foregroundColor(Color("PrimaryColor"))
                    Text("Explore Now!")
                        .font(.custom("LibreFranklin-SemiBold", size: 14))
                        .foregroundColor(.white)
                }
                Spacer()
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
