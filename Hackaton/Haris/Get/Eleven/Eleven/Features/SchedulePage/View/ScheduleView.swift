//
//  ScheduleView.swift
//  Eleven
//
//  Created by M Haris Sitompul on 24/02/23.
//

import SwiftUI
import SDWebImageSwiftUI

struct ScheduleView: View {
    @State var isVideoCallSelected = true
    @State var isPrivateCallSelected = false
    
    @ObservedObject var viewModel = ScheduleViewModel()
    var body: some View {
        VStack{
            HStack{
                Button {
                    self.isVideoCallSelected = true
                    self.isPrivateCallSelected = false
                } label: {
                        if isVideoCallSelected{
                            Spacer()
                            Text("Video Call")
                                .font(.custom("LibreFranklin-Regular", size: 12))
                                .foregroundColor(Color("PrimaryColor"))
                            Spacer()
                        }else {
                            Spacer()
                            Text("Video Call")
                                .font(.custom("LibreFranklin-Regular", size: 12))
                                .foregroundColor(.black)
                            Spacer()
                        }

                    }
                Button {
                    self.isVideoCallSelected = false
                    self.isPrivateCallSelected = true
                } label: {
                        if isPrivateCallSelected{
                            Spacer()
                            Text("Private Call")
                                .font(.custom("LibreFranklin-Regular", size: 12))
                                .foregroundColor( Color("PrimaryColor"))
                            Spacer()
                        }else {
                            Spacer()
                            Text("Private Call")
                                .font(.custom("LibreFranklin-Regular", size: 12))
                                .foregroundColor(.black)
                            Spacer()
                        }
                }
            }
            
            if isVideoCallSelected{
                HStack{
                    Rectangle()
                        .frame(width:193,height: 1)
                        .foregroundColor(Color("PrimaryColor"))
                    Spacer()
                }
                ScrollView{
                    ForEach(viewModel.meetings.prefix(2), id:\.id){item in
                        HStack{
                            ZStack{
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 330, height: 145)
                                    .foregroundColor(Color(red: 245/255, green: 246/255, blue: 248/255))
                                VStack{
                                    HStack{
                                        WebImage(url: URL(string: item.creator.profilePhoto ?? ""))
                                            .frame(width: 85, height: 85)
                                            .cornerRadius(44)
                                            .padding(.top,10)
                                            .padding(.leading,42)

    //                                    Spacer()
                                        VStack(alignment: .leading){
    //                                        Text("Music Producing 101 : Start")
    //                                            .font(.custom("LibreFranklin-SemiBold", size: 14))
    //                                            .foregroundColor(Color("BlackColor"))
                                            Text(item.title ?? "")
                                                .font(.custom("LibreFranklin-SemiBold", size: 14))
                                                .padding(.trailing,30)
                                                .foregroundColor(Color("BlackColor"))
                                                .padding(.bottom,8)
                                            Text(item.creator.name ?? "")
                                                .font(.custom("LibreFranklin-Regular", size: 12))
                                            ForEach(item.creator.professions ?? [],id:\.id){item in
                                                Text(item.name ?? "")
                                                    .font(.custom("LibreFranklin-Regular", size: 10))
                                            }
                                            
                                        }
                                        .padding(.leading,16.93)
                                        Spacer()
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
                                                Text("\(item.slots ?? 0)")
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
                                                Text("Enter Room")
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
            else{
            HStack{
                Spacer()
                Rectangle()
                    .frame(width:193,height: 1)
                    .foregroundColor(Color("PrimaryColor"))
            }.padding(.bottom,32)
            Spacer()
            Image("PrivateCall")
                .resizable()
                .frame(width: 188, height: 188)
                .padding(.bottom)
            Text("Unfortunately, there is no private")
                .font(.custom("LibreFranklin-SemiBold", size: 20))
                .foregroundColor(Color("PrimaryColor"))
                .padding(.bottom,4)
            Text("call schedule yet")
                .font(.custom("LibreFranklin-SemiBold", size: 20))
                .foregroundColor(Color("PrimaryColor"))
            Spacer()
        }
            
            
            Spacer()
        }.padding(.top,20)
        .onAppear{
            Task{
                await viewModel.getMeetingsList()
            }
        }
    }
}

struct ScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleView()
    }
}
