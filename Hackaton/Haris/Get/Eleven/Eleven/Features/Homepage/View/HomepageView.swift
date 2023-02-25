//
//  HomepageView.swift
//  Eleven
//
//  Created by M Haris Sitompul on 23/02/23.
//

import SwiftUI
import SDWebImageSwiftUI

struct HomepageView: View {
    @State var search = ""
    @State var showSearchPage = false
    @State var showMoreCreator = false
    @State var showTodaySession = false
    @State var showCreatorProfile = false
    @ObservedObject var viewModel = HomepageViewModel()
    @ObservedObject var creatorViewModel = CreatorProfileViewModel()
    var body: some View {
        NavigationView{
            VStack{
                // Custom NavBar
                VStack{
                    HStack{
                        Text("Discover")
                            .font(.custom("LibreFranklin-Bold", size: 30))
                            .foregroundColor(Color("GrayColor"))
                        Spacer()
                    }
                    .padding(.leading,31)
                    .padding(.top,20)
                    ZStack{
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 330, height: 45)
                            .foregroundColor(Color(red: 245/255, green: 246/255, blue: 248/255))
                        TextField("Search...",text: $search)
                            .padding(.leading,47.25)
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
                        HStack{
                            Spacer()
                            Button {
                                showSearchPage.toggle()
                            } label: {
                                ZStack{
                                    RoundedRectangle(cornerRadius: 8)
                                        .frame(width: 44.68, height: 45)
                                        .foregroundColor(Color("PrimaryColor"))
                                    Image("Search")
                                        .resizable()
                                        .frame(width: 24.37, height: 24.55)
                                }
                            }
                            .fullScreenCover(isPresented: $showSearchPage) {
                                SearchView()
                            }

                            
                        }
                        .padding(.trailing,29)
                    }
                
                }
                
                ScrollView{
                    VStack{
                        Spacer()
                        HStack{
                            Text("Find Your Creators")
                                .font(.custom("LibreFranklin-SemiBold", size: 20))
                                .foregroundColor(Color("GrayColor"))
                            Spacer()
                        }
                        .padding(.leading,29)
                        .padding(.bottom,21)
                        
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack(spacing: 11){
                                VStack{
                                    Image("Entertainment")
                                        .resizable()
                                        .frame(width: 77, height: 77)
                                    Text("Entertainment")
                                        .font(.custom("LibreFranklin-Medium", size: 8))
                                }.padding(.leading,29)
                                VStack{
                                    Image("Education")
                                        .resizable()
                                        .frame(width: 77, height: 77)
                                    Text("Education")
                                        .font(.custom("LibreFranklin-Medium", size: 8))
                                }
                                VStack{
                                    Image("Bussiness")
                                        .resizable()
                                        .frame(width: 77, height: 77)
                                    Text("Bussiness")
                                        .font(.custom("LibreFranklin-Medium", size: 8))
                                }
                                VStack{
                                    Image("Health")
                                        .resizable()
                                        .frame(width: 77, height: 77)
                                    Text("Health")
                                        .font(.custom("LibreFranklin-Medium", size: 8))
                                }
                            }
                            
                        }.padding(.bottom,21)
                        
                        
                        
                        HStack{
                            Text("Don't miss it!")
                                .font(.custom("LibreFranklin-SemiBold", size: 20))
                                .foregroundColor(Color("GrayColor"))
                            Spacer()
                        }
                        .padding(.leading,29)
                        .padding(.bottom ,27)
                        
                        // Session List
                        
                        ForEach(viewModel.meetings.prefix(3), id:\.id){item in
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
                                                    Text("Rp. \(item.price ?? 0)")
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
                        Button {
                            showTodaySession.toggle()
                        } label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 50)
                                    .frame(width: 316, height: 49)
                                    .foregroundColor(Color("PrimaryColor"))
                                Text("Show Today's Session")
                                    .font(.custom("LibreFranklin-SemiBold", size: 14))
                                    .foregroundColor(.white)
                            }.padding(.bottom,20)

                        }.fullScreenCover(isPresented: $showTodaySession) {
                            TodaySessionView()
                        }
                        
                        HStack{
                            Text("Top Creators")
                                .font(.custom("LibreFranklin-SemiBold", size: 20))
                                .foregroundColor(Color("GrayColor"))
                            Spacer()
                        }
                        .padding(.top,2)
                        .padding(.leading,29)
                        .padding(.bottom,25)
                        
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack{
                                ZStack{
                                    RoundedRectangle(cornerRadius: 8)
                                        .frame(width: 197, height: 231)
                                        .foregroundColor(.white)
                                        .shadow(radius: 3)
                                        
                                    VStack{
                                        Image("CreatorPict")
                                        HStack{
                                            Text("Samantha Ze")
                                                .font(.custom("LibreFranklin-SemiBold", size: 14))
                                            Spacer()
                                        }
                                        .padding(.leading, 15)
                                        HStack{
                                            Image("ProfessionPict")
                                                .resizable()
                                                .frame(width: 12.5, height: 10)
                                            Text("Makeup Artist")
                                                .font(.custom("LibreFranklin-Medium", size: 8))
                                            Spacer()
                                        }
                                        .padding(.bottom)
                                        .padding(.leading, 15)
                                    }
                                }.padding(.leading,29)
                                ZStack{
                                    RoundedRectangle(cornerRadius: 8)
                                        .frame(width: 197, height: 231)
                                        .foregroundColor(.white)
                                        .shadow(radius: 3)
                                        
                                    VStack{
                                        Image("CreatorPict")
                                        HStack{
                                            Text("Samantha Ze")
                                                .font(.custom("LibreFranklin-SemiBold", size: 14))
                                            Spacer()
                                        }
                                        .padding(.leading, 15)
                                        HStack{
                                            Image("ProfessionPict")
                                                .resizable()
                                                .frame(width: 12.5, height: 10)
                                            Text("Makeup Artist")
                                                .font(.custom("LibreFranklin-Medium", size: 8))
                                            Spacer()
                                        }
                                        .padding(.bottom)
                                        .padding(.leading, 15)
                                    }
                                }.padding(.leading,16)
                                ZStack{
                                    RoundedRectangle(cornerRadius: 8)
                                        .frame(width: 197, height: 231)
                                        .foregroundColor(.white)
                                        .shadow(radius: 3)
                                        
                                    VStack{
                                        Image("CreatorPict")
                                        HStack{
                                            Text("Samantha Ze")
                                                .font(.custom("LibreFranklin-SemiBold", size: 14))
                                            Spacer()
                                        }
                                        .padding(.leading, 15)
                                        HStack{
                                            Image("ProfessionPict")
                                                .resizable()
                                                .frame(width: 12.5, height: 10)
                                            Text("Makeup Artist")
                                                .font(.custom("LibreFranklin-Medium", size: 8))
                                            Spacer()
                                        }
                                        .padding(.bottom)
                                        .padding(.leading, 15)
                                    }
                                }.padding(.leading,16)
                            }
                        }.padding(.bottom,30)
                        
                        VStack(spacing:24){
                            ForEach(viewModel.creators.prefix(4), id:\.id){item in
                                Button {
                                    showCreatorProfile.toggle()
                                    creatorViewModel.selectedUser = item.id ?? ""
                                } label: {
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 12)
                                            .frame(width: 330, height: 88)
                                            .foregroundColor(.white)
                                            .shadow(radius: 2)
                                        HStack{
                                            WebImage(url: URL(string: item.profilePhoto ?? ""))
                                                .resizable()
                                                .frame(width: 64, height: 64)
                                                .cornerRadius(44)
                                                .padding(.trailing,20.61)
                                                
                                            VStack(alignment: .leading, spacing:8 ){
                                                Text(item.name ?? "")
                                                    .font(.custom("LibreFranklin-SemiBold", size: 14))
                                                VStack(alignment: .leading){
                                                    HStack{
                                                        Image("ProfessionPict")
                                                            .resizable()
                                                            .frame(width: 12.5, height: 12)
                                                        ForEach(item.professions ?? [], id:\.id){item in
                                                            Text(item.name ?? "")
                                                                .font(.custom("LibreFranklin-Medium", size: 8))
                                                        }
                                                        
                                                    }
                                                    HStack{
                                                        Image("Heart")
                                                            .resizable()
                                                            .frame(width: 12.5, height: 12)
                                                        Text("5.324")
                                                            .font(.custom("LibreFranklin-Medium", size: 8))
                                                    }
                                                }
                                            }
                                            Spacer()
                                            Image("Favorite")
                                                .resizable()
                                                .frame(width: 22.13, height: 18.42)
                                                .padding(.trailing,48.11)
                                        }
                                        .padding(.leading,46)
                                    }.foregroundColor(.black)
                                }
                                .fullScreenCover(isPresented: $showCreatorProfile) {
                                    CreatorProfileView()
                                }

                            }
                            
                            
                        }
                        .padding(.bottom,18)
                        Button {
                            showMoreCreator.toggle()
                        } label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 50)
                                    .frame(width: 316, height: 49)
                                    .foregroundColor(Color("PrimaryColor"))
                                Text("Show More")
                                    .font(.custom("LibreFranklin-SemiBold", size: 14))
                                    .foregroundColor(.white)
                            }.padding(.bottom,20)

                        }.fullScreenCover(isPresented: $showMoreCreator) {
                            ShowMoreCreatorView()
                        }


                                                
                        
                    }
                    
                }
                
            }
        }.onAppear{
            Task{
                await viewModel.getCreatorsList()
                await viewModel.getMeetingsList()
            }
        }
    }
}

struct HomepageView_Previews: PreviewProvider {
    static var previews: some View {
        HomepageView()
    }
}
