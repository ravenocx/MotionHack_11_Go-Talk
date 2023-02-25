//
//  CreatorProfileView.swift
//  Eleven
//
//  Created by M Haris Sitompul on 24/02/23.
//

import SwiftUI

struct CreatorProfileView: View {
    @State var isVideoCallScheduleSelected = true
    @State var isPrivateCallSelected = false
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var viewModel = CreatorProfileViewModel()
    var body: some View {
        NavigationView {
            VStack{
                    GeometryReader{proxy in
                        ScrollView {
                            VStack{
                                ZStack{
                                    TabView{
                                        ForEach(0..<3){num in
                                            Image("tree")
                                                .resizable()
                                                .scaledToFill()
                                                .tag(num)
                                        }
                                    }.tabViewStyle(PageTabViewStyle())
                                    .clipShape(RoundedRectangle(cornerRadius: 5))
                                    .frame(width: 390, height: 268)
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
                                        Spacer()
                                    }.padding(.top)
                                        .padding(.leading)
                                }

                                VStack(alignment : .leading, spacing: 15.26){
                                    HStack{
                                        Text(viewModel.detailCreators?.name ?? "")
                                            .font(.custom("LibreFranklin-SemiBold", size: 20))
                                            .foregroundColor(Color("PrimaryColor"))
                                            .padding(.top,15)
                                        Spacer()
                                    }
                                    VStack(spacing:10){
                                        HStack(spacing:6.42){
                                            Image("ProfessionPict")
                                                .resizable()
                                                .frame(width: 17, height: 17)
                                            Text("Singer,Songwriter")
                                                .font(.custom("LibreFranklin-Regular", size: 12))
                                            Spacer()
                                        }
                                        HStack(spacing: 5.92){
                                            Image("RedHeart")
                                                .resizable()
                                                .frame(width: 17, height: 17)
                                            Text("904")
                                                .font(.custom("LibreFranklin-Regular", size: 12))
                                            Image("Star")
                                                .resizable()
                                                .frame(width: 17, height: 17)
                                                .padding(.leading,29.9)
                                            NavigationLink {
                                                CreatorRatingsView()
                                            } label: {
                                                Text("4.3 •  Ratings & Reviews")
                                                    .font(.custom("LibreFranklin-Regular", size: 12))
                                                    .foregroundColor(Color(red: 237/255, green: 188/255, blue: 9/255))
                                            }
                                            Spacer()
                                        }
                                    }.padding(.bottom,1.74)
                                    Text("Tiffany is a NYC-based singer-songwriter. Born in Busan,\nSouth Korea, and raised in LA.  Her style is a combination of\njazz, pop, and r&b paired with thoughtful lyricism and\nstorytelling, and listeners describe her music as cozy and\nwarm.")
                                        .font(.custom("LibreFranklin-Regular", size: 12))
                                }
                                .padding(.leading, 33)
                                
                                Rectangle()
                                    .frame(height: 6)
                                    .foregroundColor(Color(red: 238/255, green: 238/255, blue: 238/255))
                                    .padding(.bottom,20)
                                
                                VStack{
                                    HStack{
                                        Button {
                                            self.isVideoCallScheduleSelected = true
                                            self.isPrivateCallSelected = false
                                        } label: {
                                                if isVideoCallScheduleSelected{
                                                    Spacer()
                                                    Text("Video Call Schedule")
                                                        .font(.custom("LibreFranklin-Bold", size: 8))
                                                        .foregroundColor(Color("PrimaryColor"))
                                                    Spacer()
                                                }else {
                                                    Spacer()
                                                    Text("Video Call Schedule")
                                                        .font(.custom("LibreFranklin-Bold", size: 8))
                                                        .foregroundColor(.black)
                                                    Spacer()
                                                }

                                            }
                                        Button {
                                            self.isVideoCallScheduleSelected = false
                                            self.isPrivateCallSelected = true
                                        } label: {
                                                if isPrivateCallSelected{
                                                    Spacer()
                                                    Text("Assign for Private Call")
                                                        .font(.custom("LibreFranklin-SemiBold", size: 8))
                                                        .foregroundColor( Color("PrimaryColor"))
                                                    Spacer()
                                                }else {
                                                    Spacer()
                                                    Text("Assign for Private Call")
                                                        .font(.custom("LibreFranklin-SemiBold", size: 8))
                                                        .foregroundColor(.black)
                                                    Spacer()
                                                }
                                        }
                                    }
                                    
                                    if isVideoCallScheduleSelected{
                                        HStack{
                                            Rectangle()
                                                .frame(width:193,height: 1)
                                                .foregroundColor(Color("PrimaryColor"))
                                            Spacer()
                                        }
                                    }else{
                                        HStack{
                                            Spacer()
                                            Rectangle()
                                                .frame(width:193,height: 1)
                                                .foregroundColor(Color("PrimaryColor"))
                                        }
                                    }
                                }
                            }.padding(.bottom,18)
                            // Show Schedule
                            if isVideoCallScheduleSelected{
                                VideoCallScheduleView()
                            }else{
                                PrivateCallView()
                            }
                        }
                    }
            }
        }.onAppear{
            Task{
                await viewModel.getDetailCreatorList(id:viewModel.selectedUser)
            }
        }
        }

    }


struct CreatorProfileView_Previews: PreviewProvider {
    static var previews: some View {
        HomepageView()
    }
}
