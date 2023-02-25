//
//  VideoCallScheduleView.swift
//  Eleven
//
//  Created by M Haris Sitompul on 24/02/23.
//

import SwiftUI

struct VideoCallScheduleView: View {
    var body: some View {
        VStack{
            HStack {
                ZStack{
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 134, height: 27)
                        .foregroundColor(Color("PrimaryColor"))
                    HStack{
                        Image("VCIcon1")
                            .resizable()
                            .frame(width: 11, height: 11)
                        Text("Available Schedule")
                            .font(.custom("LibreFranklin-Regular", size: 8))
                            .foregroundColor(.white)
                        Image("VCIcon2")
                            .resizable()
                            .frame(width: 8, height: 6)
                    }
                }
                Spacer()
            }.padding(.leading,28)
                .padding(.bottom,27)
            
            ForEach(0..<3){_ in
                HStack{
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 330, height: 145)
                            .foregroundColor(Color(red: 245/255, green: 246/255, blue: 248/255))
                        VStack{
                            HStack{
                                Circle()
                                    .frame(width: 85, height: 85)
                                    .padding(.top,10)
                                VStack(alignment: .leading){
                                    Text("Music Producing 101 : Start")
                                        .font(.custom("LibreFranklin-SemiBold", size: 14))
                                        .foregroundColor(Color("BlackColor"))
                                    Text("From Your Garage")
                                        .font(.custom("LibreFranklin-SemiBold", size: 14))
                                        .foregroundColor(Color("BlackColor"))
                                        .padding(.bottom,8)
                                    Text("Tiffany Alexis")
                                        .font(.custom("LibreFranklin-Regular", size: 12))
                                    Text("Singer, Songwriter")
                                        .font(.custom("LibreFranklin-Regular", size: 10))
                                }
                                .padding(.leading,16.93)
                                
                            }
                            ZStack{
                                RoundedRectangle(cornerRadius: 8)
                                    .frame(width: 316, height: 26)
                                    .foregroundColor(.white)
                                HStack{
                                    HStack(spacing:2.62){
                                        Image("Calendar")
                                            .resizable()
                                            .frame(width: 17, height: 17)
                                        Text("23 February 2023")
                                            .font(.custom("LibreFranklin-Regular", size: 8))
                                    }
                                    HStack(spacing: 3.39){
                                        Image("Clock")
                                            .resizable()
                                            .frame(width: 17, height: 17)
                                        Text("20:00 - 20:45")
                                            .font(.custom("LibreFranklin-Regular", size: 8))
                                    }
                                    HStack(spacing: 3.39){
                                        Image("Profile")
                                            .resizable()
                                            .frame(width: 17, height: 17)
                                        Text("3/7")
                                            .font(.custom("LibreFranklin-Regular", size: 8))
                                    }
                                    Spacer()
                                }
                                .padding(.leading,46)
                                
                                HStack{
                                    Spacer()
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 8)
                                            .frame(width: 71, height: 27)
                                            .foregroundColor(Color("PrimaryColor"))
                                        Text("Rp. 50.000")
                                            .font(.custom("LibreFranklin-Medium", size: 8))
                                            .foregroundColor(.white)
                                    }
                                }
                                .padding(.trailing,38)
                            }
                        }
                    }
                }
                .padding(.bottom,20)
            }
        }
    }
}

struct VideoCallScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        VideoCallScheduleView()
    }
}
