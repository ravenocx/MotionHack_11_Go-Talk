//
//  ProfileView.swift
//  Eleven
//
//  Created by M Haris Sitompul on 24/02/23.
//

import SwiftUI

struct ProfileView: View {
    @ObservedObject var viewModel = ProfileViewModel()
    @State var isShowVoucher = false
    var body: some View {
        VStack{
            HStack{
                Text("My Profile")
                    .font(.custom("LibreFranklin-Bold", size: 20))
                Spacer()
            }
            .padding(.leading,30)
            .padding(.top,25)
            Divider()
            VStack(spacing:27){
                Image("UserProfilePict")
                    .resizable()
                    .frame(width: 98, height: 98)
                    .cornerRadius(50)
                    .padding(.top,28)
                VStack{
                    HStack{
                        Image("Rocket2")
                            .resizable()
                            .frame(width: 25, height: 25)
                        Text(viewModel.user?.name ?? "")
                            .font(.custom("LibreFranklin-Medium", size: 20))
                    }
                    Text(viewModel.user?.phone ?? "")
                        .font(.custom("LibreFranklin-Medium", size: 12))
                        .padding(.top,5)
                    
                }
            }
            VStack{
                HStack{
                    ZStack{
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 46, height: 41)
                            .foregroundColor(Color("PrimaryColor4"))
                        Image(systemName: "person.fill")
                            .frame(width: 24, height: 24)
                    }
                    Text("Account Setting")
                        .padding(.leading,28)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .frame(width: 24, height: 24)
                        .padding(.trailing,44)
                }.padding(.top,38)
                    .padding(.leading,12)
                Divider()
                HStack{
                    ZStack{
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 46, height: 41)
                            .foregroundColor(Color("PrimaryColor4"))
                        Image("Archive")
                            .resizable()
                            .frame(width: 24, height: 24)
                    }
                    Text("Archive")
                        .padding(.leading,28)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .frame(width: 24, height: 24)
                        .padding(.trailing,44)
                }.padding(.top,38)
                    .padding(.leading,12)
                Divider()
                HStack{
                    ZStack{
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 46, height: 41)
                            .foregroundColor(Color("PrimaryColor4"))
                        Image("Transaction")
                            .resizable()
                            .frame(width: 24, height: 24)
                    }
                    Text("Transaction")
                        .padding(.leading,28)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .frame(width: 24, height: 24)
                        .padding(.trailing,44)
                }.padding(.top,38)
                    .padding(.leading,12)
                Divider()
                Button {
                    isShowVoucher.toggle()
                } label: {
                    VStack{
                        HStack{
                            ZStack{
                                RoundedRectangle(cornerRadius: 8)
                                    .frame(width: 46, height: 41)
                                    .foregroundColor(Color("PrimaryColor4"))
                                Image("Voucher")
                                    .resizable()
                                    .frame(width: 24, height: 24)
                            }
                            Text("Voucher")
                                .padding(.leading,28)
                            Spacer()
                            Image(systemName: "chevron.right")
                                .frame(width: 24, height: 24)
                                .padding(.trailing,44)
                        }.padding(.top,38)
                            .padding(.leading,12)
                        Divider()
                    }
                }.foregroundColor(.black)
                    .fullScreenCover(isPresented: $isShowVoucher) {
                        RewardView()
                    }

                
                
            }.padding(.leading,30)
            Spacer()
            
        }.onAppear{
            Task{
                await viewModel.getUserList()
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
