//
//  MyRewardView.swift
//  Eleven
//
//  Created by M Haris Sitompul on 24/02/23.
//

import SwiftUI

struct MyRewardView: View {
    @State var isActiveRewardsSelected = true
    @State var isPastRewardsSelected = false
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
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
                Text("My Rewards")
                    .font(.custom("LibreFranklin-SemiBold", size: 16))
                    .padding(.leading,14)
                Spacer()
            }.padding(.bottom,13)
            HStack{
                Button {
                    self.isActiveRewardsSelected = true
                    self.isPastRewardsSelected = false
                } label: {
                        if isActiveRewardsSelected{
                            Spacer()
                            Text("Active Rewards")
                                .font(.custom("LibreFranklin-Regular", size: 12))
                                .foregroundColor(Color("PrimaryColor"))
                            Spacer()
                        }else {
                            Spacer()
                            Text("Active Rewards")
                                .font(.custom("LibreFranklin-Regular", size: 12))
                                .foregroundColor(.black)
                            Spacer()
                        }

                    }
                Button {
                    self.isActiveRewardsSelected = false
                    self.isPastRewardsSelected = true
                } label: {
                        if isPastRewardsSelected{
                            Spacer()
                            Text("Past Reward")
                                .font(.custom("LibreFranklin-Regular", size: 12))
                                .foregroundColor( Color("PrimaryColor"))
                            Spacer()
                        }else {
                            Spacer()
                            Text("Past Reward")
                                .font(.custom("LibreFranklin-Regular", size: 12))
                                .foregroundColor(.black)
                            Spacer()
                        }
                }
            }
            
            if isActiveRewardsSelected{
                VStack(spacing:20){
                    HStack{
                        Rectangle()
                            .frame(width:193,height: 1)
                            .foregroundColor(Color("PrimaryColor"))
                        Spacer()
                    }.padding(.bottom,32)
                    ZStack{
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 330, height: 130)
                            .foregroundColor(.white)
                            .shadow(radius: 3)
                        HStack(spacing:20.58){
                            Image("MonthlyOffer1")
                                .resizable()
                                .frame(width: 159.42, height: 130.11)
                            VStack(alignment:.leading, spacing:7){
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
                                }
                                
                                ZStack{
                                    RoundedRectangle(cornerRadius: 8)
                                        .frame(width: 134, height: 19)
                                        .foregroundColor(Color("PrimaryColor"))
                                    Text("Generate Voucher Code")
                                        .font(.custom("LibreFranklin-Medium", size: 8))
                                        .foregroundColor(.white)
                                }.padding(.top,7)
                            }.padding(.trailing,16)
                            
                        }
                    }

                    ZStack{
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 330, height: 130)
                            .foregroundColor(.white)
                            .shadow(radius: 3)
                        HStack(spacing:20.58){
                            Image("Discount")
                                .resizable()
                                .frame(width: 159.42, height: 130.11)
                            VStack(alignment:.leading, spacing:7){
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
                                }
                                
                                ZStack{
                                    RoundedRectangle(cornerRadius: 8)
                                        .frame(width: 134, height: 19)
                                        .foregroundColor(Color("PrimaryColor"))
                                    Text("Generate Voucher Code")
                                        .font(.custom("LibreFranklin-Medium", size: 8))
                                        .foregroundColor(.white)
                                }.padding(.top,7)
                            }.padding(.trailing,16)
                            
                        }
                    }
                }
            }else{
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
        }
    }
}

struct MyRewardView_Previews: PreviewProvider {
    static var previews: some View {
        MyRewardView()
    }
}
