//
//  SignUpView.swift
//  Eleven
//
//  Created by M Haris Sitompul on 23/02/23.
//

import SwiftUI

struct SignUpView: View {
    @State var name = ""
    @State var password = ""
    @State var password2 = ""
    @State var email = ""
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
            .padding(.top,15)
            VStack{
                Spacer()
                Image("SignUpRR")
            }.ignoresSafeArea()
            
            VStack{
                Spacer()
                Text("Complete your personal data")
                    .font(.custom("LibreFranklin-Bold", size: 16))
                    .foregroundColor(Color("GrayColor"))
                    .padding(.bottom,41)
                
                VStack(spacing:17.85){
                    VStack{
                        HStack{
                            Text("Full Name")
                                .font(.custom("LibreFranklin-Regular", size: 12))
                                .foregroundColor(Color("GrayColor"))
                                .padding(.leading,31)
                            Spacer()
                        }
                        ZStack{
                            RoundedRectangle(cornerRadius:8.08)
                                .frame(width: 330, height: 37.78)
                                .foregroundColor(Color(red: 238/255, green: 238/255, blue: 238/255))
                            TextField("Enter your full name", text: $name)
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
                                    Image("FName")
                                        .resizable()
                                        .frame(width: 18.64, height: 18.13)
                                }
                            }
                            .padding(.trailing,30)

                        }
                    }
                    
                    VStack{
                        HStack{
                            Text("Email Address")
                                .font(.custom("LibreFranklin-Regular", size: 12))
                                .foregroundColor(Color("GrayColor"))
                                .padding(.leading,31)
                            Spacer()
                        }
                        ZStack{
                            RoundedRectangle(cornerRadius:8.08)
                                .frame(width: 330, height: 37.78)
                                .foregroundColor(Color(red: 238/255, green: 238/255, blue: 238/255))
                            TextField("Enter your email", text: $email)
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
                                    Image("FName")
                                        .resizable()
                                        .frame(width: 18.64, height: 18.13)
                                }
                            }
                            .padding(.trailing,30)

                        }
                    }
                    VStack{
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
                                    Image("FName")
                                        .resizable()
                                        .frame(width: 18.64, height: 18.13)
                                }
                            }
                            .padding(.trailing,30)

                        }
                    }
                    
                    VStack{
                        HStack{
                            Text("Confirm Password")
                                .font(.custom("LibreFranklin-Regular", size: 12))
                                .foregroundColor(Color("GrayColor"))
                                .padding(.leading,31)
                            Spacer()
                        }
                        ZStack{
                            RoundedRectangle(cornerRadius:8.08)
                                .frame(width: 330, height: 37.78)
                                .foregroundColor(Color(red: 238/255, green: 238/255, blue: 238/255))
                            SecureField("Re-enter your password", text: $password2)
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
                                    Image("FName")
                                        .resizable()
                                        .frame(width: 18.64, height: 18.13)
                                }
                            }
                            .padding(.trailing,30)

                        }
                    }
                }
                .padding(.bottom,32.22)

                VStack{
                    Button {

                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 50)
                                .frame(width: 330 , height:49)
                                .foregroundColor(Color("PrimaryColor"))
                            HStack{
                                Spacer()
                                Text("Send Code")
                                    .font(.custom("LibreFranklin-SemiBold", size: 14))
                                    .foregroundColor(.white)
                                Spacer()
                            }
                        }.padding(.bottom,23)
                    }

                    HStack{
                        Text("Already have an account?")
                            .font(.custom("LibreFranklin-Regular", size: 12))
                            .foregroundColor(Color(.gray))

                        Button {
                            
                        } label: {
                            Text("Login Here")
                                .font(.custom("LibreFranklin-SemiBold", size: 12))
                                .foregroundColor(Color("PrimaryColor"))
                        }
                    }
                    .padding(.bottom, 16)

                

                }
//                .padding(.bottom,229)
            }
        }
        


    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
