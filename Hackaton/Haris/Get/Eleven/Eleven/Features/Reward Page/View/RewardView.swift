//
//  RewardView.swift
//  Eleven
//
//  Created by M Haris Sitompul on 24/02/23.
//

import SwiftUI
import SDWebImageSwiftUI

struct RewardView: View {
    @ObservedObject var viewModel = RewardViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        NavigationView{
            ScrollView{
            VStack{
                VStack{
                    HStack{
                        Button {
                            presentationMode.wrappedValue.dismiss()
                        } label: {
                            Image(systemName: "arrow.left")
                                .foregroundColor(Color("PrimaryColor"))
                                .frame(width: 26, height: 45)
                                .padding(.leading,26)
                        }
                        Text("Reward")
                            .font(.custom("LibreFranklin-SemiBold", size: 16))
                            .padding(.leading,14)
                        Spacer()
                    }
                    Divider()
                        .padding(.bottom)
                }
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 330, height: 124)
                        .foregroundColor(Color(red: 245/255, green: 246/255, blue: 248/255))
                    VStack(spacing:21){
                        HStack{
//                            WebImage(url: URL(string: viewModel.user?.profilePhoto ?? ""))
                            Image("UserProfilePict")
                                .resizable()
                                .frame(width: 38, height: 38)
                                .cornerRadius(34)
                                .padding(.leading,45)
                            VStack(alignment: .leading,spacing: 5){
                                Text(viewModel.user?.name ?? "")
                                    .font(.custom("LibreFranklin-SemiBold", size: 14))
                                Text("\(viewModel.user?.phone ?? "")")
                                    .font(.custom("LibreFranklin-Medium", size: 8))
                            }
                            Spacer()
                            
                            NavigationLink {
                                MyRewardView()
                                    .navigationBarHidden(true)
                            } label: {
                                ZStack{
                                    RoundedRectangle(cornerRadius: 8)
                                        .frame(width: 92, height: 23)
                                        .foregroundColor(Color("PrimaryColor"))
                                    HStack{
                                        Image("MyReward")
                                            .resizable()
                                            .frame(width: 13, height: 13)
                                        Text("My Rewards")
                                            .font(.custom("LibreFranklin-Medium", size: 8))
                                            .foregroundColor(.white)
                                    }
                                }
                                .padding(.trailing,44)
                            }

                            
                            
                        }
                        ZStack{
                            RoundedRectangle(cornerRadius: 8)
                                .frame(width: 316, height: 26)
                                .foregroundColor(.white)
                            HStack(spacing:8){
                                Image("Rocket")
                                    .resizable()
                                    .frame(width: 13, height: 13)
                                Text("Purchased session : 6")
                                    .font(.custom("LibreFranklin-Medium", size: 8))
                                Spacer()
                            }
                            .padding(.leading,50)
                        }
                    }
                }
                .padding(.bottom,19)
                HStack{
                    Text("Monthly Offers")
                        .font(.custom("LibreFranklin-SemiBold", size: 20))
                        .foregroundColor(Color("GrayColor"))
                    Spacer()
                }
                .padding(.leading,30)
                .padding(.bottom,27)
                
                HStack(spacing:10.18){
                    ZStack{
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 158.62, height: 220.81)
                            .foregroundColor(.white)
                            .shadow(radius: 3)
                            
                        VStack(alignment:.leading){
                            Image("MonthlyOffer1")
                                .resizable()
                                .frame(width: 159.42, height: 130.11)
                                .padding(.bottom,9.52)
                            VStack(alignment:.leading, spacing: 4.72){
                                Text("1x Free Video Call")
                                    .font(.custom("LibreFranklin-SemiBold", size: 12))
                                Text("Requirement")
                                    .font(.custom("LibreFranklin-Medium", size: 8))
                                HStack(spacing:8){
                                    Image("Rocket")
                                        .resizable()
                                        .frame(width: 13, height: 13)
                                    Text("New User")
                                        .font(.custom("LibreFranklin-Medium", size: 8))
                                }
                                HStack(spacing:8){
                                    Image("ExpiredDate")
                                        .resizable()
                                        .frame(width: 13, height: 13)
                                    Text("-")
                                        .font(.custom("LibreFranklin-Medium", size: 8))
                                        
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 8)
                                            .frame(width: 52.52, height: 14.15)
                                            .foregroundColor(Color("GrayColor2"))
                                        Text("Claimed")
                                            .font(.custom("LibreFranklin-Medium", size: 6))
                                            .foregroundColor(.white)
                                    }.padding(.leading,50)
                                }.padding(.bottom,8.83)
                            }.padding(.leading,11.53)
                        }
                    }
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 158.62, height: 220.81)
                            .foregroundColor(.white)
                            .shadow(radius: 3)
                            
                        VStack(alignment:.leading){
                            Image("Discount")
                                .resizable()
                                .frame(width: 159.42, height: 130.11)
                                .padding(.bottom,9.52)
                            VStack(alignment:.leading, spacing: 4.72){
                                Text("20% Off Video Call")
                                    .font(.custom("LibreFranklin-SemiBold", size: 12))
                                Text("Requirement")
                                    .font(.custom("LibreFranklin-Medium", size: 8))
                                HStack(spacing:8){
                                    Image("Rocket")
                                        .resizable()
                                        .frame(width: 13, height: 13)
                                    Text("3")
                                        .font(.custom("LibreFranklin-Medium", size: 8))
                                }
                                HStack(spacing:8){
                                    Image("ExpiredDate")
                                        .resizable()
                                        .frame(width: 13, height: 13)
                                    Text("February 2023")
                                        .font(.custom("LibreFranklin-Medium", size: 8))
                                        
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 8)
                                            .frame(width: 52.52, height: 14.15)
                                            .foregroundColor(Color("PrimaryColor"))
                                        Button {
                                            
                                        } label: {
                                            Text("Claim")
                                                .font(.custom("LibreFranklin-Medium", size: 8))
                                                .foregroundColor(.white)
                                        }

                                        
                                    }.padding(.leading,5)
                                }.padding(.bottom,8.83)
                            }.padding(.leading,11.53)
                        }
                    }
                }
                HStack(spacing:10.18){
                    ZStack{
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 158.62, height: 220.81)
                            .foregroundColor(.white)
                            .shadow(radius: 3)
                            
                        VStack(alignment:.leading){
                            Image("Discount")
                                .resizable()
                                .frame(width: 159.42, height: 130.11)
                                .padding(.bottom,9.52)
                            VStack(alignment:.leading, spacing: 4.72){
                                Text("50% Off Video Call")
                                    .font(.custom("LibreFranklin-SemiBold", size: 12))
                                Text("Requirement")
                                    .font(.custom("LibreFranklin-Medium", size: 8))
                                HStack(spacing:8){
                                    Image("Rocket")
                                        .resizable()
                                        .frame(width: 13, height: 13)
                                    Text("6")
                                        .font(.custom("LibreFranklin-Medium", size: 8))
                                }
                                HStack(spacing:8){
                                    Image("ExpiredDate")
                                        .resizable()
                                        .frame(width: 13, height: 13)
                                    Text("February 2023")
                                        .font(.custom("LibreFranklin-Medium", size: 8))
                                        
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 8)
                                            .frame(width: 52.52, height: 14.15)
                                            .foregroundColor(Color("GrayColor2"))
                                        Text("Claimed")
                                            .font(.custom("LibreFranklin-Medium", size: 6))
                                            .foregroundColor(.white)
                                    }.padding(.leading,5)
                                }.padding(.bottom,8.83)
                            }.padding(.leading,11.53)
                        }
                    }
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 158.62, height: 220.81)
                            .foregroundColor(.white)
                            .shadow(radius: 3)
                            
                        VStack(alignment:.leading){
                            Image("FreeTicketClaimed")
                                .resizable()
                                .frame(width: 159.42, height: 130.11)
                                .padding(.bottom,9.52)
                            VStack(alignment:.leading, spacing: 4.72){
                                Text("1x Free Video Call")
                                    .font(.custom("LibreFranklin-SemiBold", size: 12))
                                Text("Requirement")
                                    .font(.custom("LibreFranklin-Medium", size: 8))
                                HStack(spacing:8){
                                    Image("Rocket")
                                        .resizable()
                                        .frame(width: 13, height: 13)
                                    Text("10")
                                        .font(.custom("LibreFranklin-Medium", size: 8))
                                }
                                HStack(spacing:8){
                                    Image("ExpiredDate")
                                        .resizable()
                                        .frame(width: 13, height: 13)
                                    Text("3 days")
                                        .font(.custom("LibreFranklin-Medium", size: 8))
                                        
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 8)
                                            .frame(width: 52.52, height: 14.15)
                                            .foregroundColor(Color("GrayColor2"))
                                        Text("Claim")
                                            .font(.custom("LibreFranklin-Medium", size: 8))
                                            .foregroundColor(.white)
                                    }.padding(.leading,35)
                                }.padding(.bottom,8.83)
                            }.padding(.leading,11.53)
                        }
                    }
                }
                .padding(.top,28.38)
            }
        }}.onAppear{
            Task{
                await viewModel.getUserList()
            }
        }
    }
    var ButtonBack : some View {
        Button(action:
                {
                    self.presentationMode.wrappedValue.dismiss()
            }) {
                HStack {
                    Image(systemName: "arrow.left")
                        .foregroundColor(Color("PrimaryColor"))
                        .frame(width: 26, height: 45)
                        .padding(.leading,16)
                }
            }
        }
}

struct RewardView_Previews: PreviewProvider {
    static var previews: some View {
        RewardView()
    }
}
