//
//  TodaySessionView.swift
//  Eleven
//
//  Created by M Haris Sitompul on 25/02/23.
//

import SwiftUI
import SDWebImageSwiftUI

struct TodaySessionView: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var viewModel = TodaySessionViewModel()
    @State var search = ""
    @State var isShowCallSession = false
    var body: some View {
        VStack{
            HStack {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "arrow.left")
                        .foregroundColor(Color("PrimaryColor"))
                        .frame(width: 26, height: 45)
                        .padding(.leading,26)
                }
                
                ZStack{
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 305, height: 45)
                        .foregroundColor(Color(red: 245/255, green: 246/255, blue: 248/255))
                    TextField("Search...",text: $search)
                        .padding(.leading,47.25)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    HStack{
                        Spacer()
                        ZStack{
                            RoundedRectangle(cornerRadius: 8)
                                .frame(width: 44.68, height: 45)
                                .foregroundColor(Color("PrimaryColor"))
                            Image("Search")
                                .resizable()
                                .frame(width: 24.37, height: 24.55)
                        }
                    }
                    .padding(.trailing,29)
                }
            }
            ScrollView{
                HStack{
                    Text("Find Your Creators")
                        .font(.custom("LibreFranklin-SemiBold", size: 20))
                        .foregroundColor(Color("GrayColor"))
                    Spacer()
                }.padding(.leading,30)
                    .padding(.top,16)
                    .padding(.bottom,25)
                
                ForEach(viewModel.meetings, id:\.id){item in
                    HStack{
                        Button {
                            isShowCallSession.toggle()
                        } label: {
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
                                                Text("Rp. \(item.price ?? 0)")
                                                    .font(.custom("LibreFranklin-Medium", size: 8))
                                                    .foregroundColor(.white)
                                            }
                                        }
                                        .padding(.trailing,38)
                                    }
                                }
                            }
                        }.fullScreenCover(isPresented: $isShowCallSession, content: {
                            CallSessionView()
                        })
                        .foregroundColor(.black)

                        
                    }
                    .padding(.bottom,20)
                }
            }
        }.onAppear{
            Task{
                await viewModel.getMeetingsList()
            }
        }
    }
}

struct TodaySessionView_Previews: PreviewProvider {
    static var previews: some View {
        TodaySessionView()
    }
}
