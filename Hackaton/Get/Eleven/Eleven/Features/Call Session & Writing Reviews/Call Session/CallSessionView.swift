//
//  CallSessionView.swift
//  Eleven
//
//  Created by M Haris Sitompul on 25/02/23.
//

import SwiftUI

struct CallSessionView: View {
    @State var sendMessage = ""
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack{
            ZStack{
                Image("Video")
                    .resizable()
                    .frame(width: 395, height: 261)
                VStack{
                    HStack{
                        ZStack{
                            Circle()
                                .foregroundColor(.white)
                                .frame(width: 40, height: 40)
                                .shadow(radius: 2)
                            Button {
                                presentationMode.wrappedValue.dismiss()
                            } label: {
                                Image(systemName: "arrow.left")
                                    .foregroundColor(Color("PrimaryColor"))
                                    .frame(width: 26, height: 45)
//                                                .padding(.leading,26)
                            }
                        }
                        Spacer()
                    }
//                    Spacer()
                }.padding(.bottom,160)

                    .padding(.leading,25)
                VStack{
                    Image("Pause")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .padding(.top,85)
    //                Spacer()
                    HStack{
                        Image("Duration")
                            .resizable()
                            .frame(width: 65, height:20 )
                        Image("Slots")
                            .resizable()
                            .frame(width: 45, height:20 )
                        Spacer()
                    }.padding(.leading,13)
                        .padding(.top,85)
                }
                
            }
            .padding(.bottom,16)
            HStack(spacing:16){
                Image("LiveStreamingPict")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .padding(.leading,19)
                VStack(alignment:.leading,spacing:5){
                    Text("Tiffany Alexis")
                        .font(.custom("LibreFranklin-SemiBold", size: 16))
                    Text("Singer, Songwriter")
                        .font(.custom("LibreFranklin-Medium", size: 8))
                }
                Spacer()
            }.padding(.bottom,13)
            VStack(alignment:.leading, spacing:10){
                Text("Music Producing 101 : Start From Your")
                Text("Garage")
            }.font(.custom("LibreFranklin-SemiBold", size: 16))
                .padding(.trailing,60)
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
                        Text("5/7")
                            .font(.custom("LibreFranklin-Regular", size: 8))
                    }
                    Spacer()
                }
                .padding(.leading,19)
                
                HStack{
                    Spacer()
                    ZStack{
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 71, height: 27)
                            .foregroundColor(Color("PrimaryColor"))
                        Text("Leave")
                            .font(.custom("LibreFranklin-Medium", size: 8))
                            .foregroundColor(.white)
                    }
                }
                .padding(.trailing,21)
                .padding(.bottom,22)
            }
            Divider()
                .padding(.bottom,15)
            HStack{
                VStack(alignment: .leading, spacing: 8){
                    Text("fairykales : What kind of tools i should buy as a beginner?")
                        .font(.custom("LibreFranklin-Regular", size: 8))
                    HStack{
                        Image("Rocket3")
                            .resizable()
                            .frame(width: 8, height: 8)
                        Text("stepooopy :  Can you give me a reference?")
                            .font(.custom("LibreFranklin-Regular", size: 8))
                    }
                    Text("mandaarchery : How long have you been studying music production?")
                        .font(.custom("LibreFranklin-Regular", size: 8))
                }
                Spacer()
            }.padding(.leading,19)
            Spacer()
            VStack{
                Divider()
                    .padding(.bottom,25.2)
                ZStack{
                    RoundedRectangle(cornerRadius: 4)
                        .frame(width: 302.56, height: 32.6)
                        .foregroundColor(.gray)
                        .opacity(0.2)
                    HStack{
                        TextField("Send a message", text: $sendMessage)
                            .font(.custom("LibreFranklin-Regular", size: 8))
                            .padding(.leading,165)
                    }
                }
            }
            .padding(.bottom,40)
        }.ignoresSafeArea()
    }
}

struct CallSessionView_Previews: PreviewProvider {
    static var previews: some View {
        CallSessionView()
    }
}
