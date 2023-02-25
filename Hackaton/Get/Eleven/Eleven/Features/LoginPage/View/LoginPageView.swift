//
//  LoginPageView.swift
//  Eleven
//
//  Created by M Haris Sitompul on 23/02/23.
//

import SwiftUI

struct LoginPageView: View {
    @ObservedObject var viewModel = LoginPageViewModel()
    
    @State var isRemember = false
    @State var phone = ""
    @State var password = ""
    
    var body: some View {
        ZStack{
            Color("AccountPageColor")
                .ignoresSafeArea()
            VStack{
                Image("Saly")
                    .resizable()
                    .frame(width: 346.39, height: 163)
                Spacer()
            }
            .padding(.top,80)
            VStack{
                Spacer()
                Image("LoginPageRR")
            }.ignoresSafeArea()
            VStack{
                Spacer()
                Text("Login into your account")
                    .font(.custom("LibreFranklin-Bold", size: 16))
                    .foregroundColor(Color("GrayColor"))
                    .padding(.bottom,39)

                HStack{
                    Text("Phone Number")
                        .font(.custom("LibreFranklin-Regular", size: 12))
                        .foregroundColor(Color("GrayColor"))
                        .padding(.leading,31)
                    Spacer()
                }

                HStack{
                    ZStack{
                        RoundedRectangle(cornerRadius:8.08)
                            .frame(width: 40, height: 37.78)
                            .foregroundColor(Color(red: 238/255, green: 238/255, blue: 238/255))
                        Text(viewModel.countryCode)
                            .font(.custom("LibreFranklin-Regular", size: 12))
                            .foregroundColor(Color("GrayColor"))
                    }.padding(.leading, 31)
                    ZStack{
                        RoundedRectangle(cornerRadius:8.08)
                            .frame(width: 300, height: 37.78)
                            .foregroundColor(Color(red: 238/255, green: 238/255, blue: 238/255))
                        TextField("Enter your phone number", text: $phone)
                            .font(.custom("LibreFranklin-Regular", size: 12))
                            .foregroundColor(Color("GrayColor"))
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
                            .padding(.leading, 20.25)
                        HStack{
                            Spacer()
                            ZStack{
                                RoundedRectangle(cornerRadius: 8.08)
                                    .frame(width: 38.82, height: 37.78)
                                    .foregroundColor(Color("PrimaryColor"))
                                Image("FName")
                                    .resizable()
                                    .frame(width: 18.64, height: 18.13)
                            }
                        }
                        .padding(.trailing,30)

                    }
                    
                }.padding(.bottom,27.85)

                HStack{
                    Text("Password")
                        .font(.custom("LibreFranklin-Regular", size: 12))
                        .foregroundColor(Color("GrayColor"))
                        .padding(.leading,31)
                    Spacer()
                }

                ZStack{
                    RoundedRectangle(cornerRadius:8.08)
                        .frame(width: 330, height: 37.78)
                        .foregroundColor(Color(red: 238/255, green: 238/255, blue: 238/255))
                    SecureField("Enter your password", text: $password)
                        .font(.custom("LibreFranklin-Regular", size: 12))
                        .foregroundColor(Color("GrayColor"))
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                        .padding(.leading, 40.25)
                    HStack{
                        Spacer()
                        ZStack{
                            RoundedRectangle(cornerRadius: 8.08)
                                .frame(width: 38.82, height: 37.78)
                                .foregroundColor(Color("PrimaryColor"))
                            Image("Password")
                                .resizable()
                                .frame(width: 18.64, height: 18.13)
                        }
                    }
                    .padding(.trailing,30)

                }.padding(.bottom,43.28)

                HStack{
                    Button {
                        isRemember.toggle()
                    } label: {
                        Image(systemName: isRemember ? "checkmark.square" : "square")
                            .foregroundColor(Color("PrimaryColor"))
                            .padding(.leading,28)
                    }
                    Text("Remember me")
                        .font(.custom("LibreFranklin-Regular", size: 12))
                    Spacer()
                    Button {

                    } label: {
                        Text("Forgot Password?")
                            .font(.custom("LibreFranklin-Regular", size: 12))
                            .foregroundColor(Color("PrimaryColor"))
                            .padding(.trailing,30)
                    }
                }
                .padding(.bottom,23)

                VStack(){
                    Button {

                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 50)
                                .frame(width: 330 , height:49)
                                .foregroundColor(Color("PrimaryColor"))
                            HStack{
                                Spacer()
                                Text("Login")
                                    .font(.custom("LibreFranklin-SemiBold", size: 14))
                                    .foregroundColor(.white)
                                Spacer()
                            }
                        }.padding(.bottom,23)
                    }

                    HStack{
                        Text("Not registered yet?")
                            .font(.custom("LibreFranklin-Regular", size: 12))
                            .foregroundColor(Color(.gray))

                        Button {
                            
                        } label: {
                            Text("Create an Account")
                                .font(.custom("LibreFranklin-SemiBold", size: 12))
                                .foregroundColor(Color("PrimaryColor"))
                        }
                    }
                    .padding(.bottom, 16)



                }
            }
        }
        


    }
}

struct LoginPageView_Previews: PreviewProvider {
    static var previews: some View {
        LoginPageView()
    }
}
