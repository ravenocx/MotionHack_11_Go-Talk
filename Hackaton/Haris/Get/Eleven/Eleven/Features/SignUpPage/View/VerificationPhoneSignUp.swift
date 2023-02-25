//
//  VerificationPhoneSignUp.swift
//  Eleven
//
//  Created by M Haris Sitompul on 24/02/23.
//

import SwiftUI

struct VerificationPhoneSignUp: View {
    @State var code = ""
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
                VStack(spacing:10){
                    Text("We’ve sent an Verification Code to")
                        .font(.custom("LibreFranklin-Bold", size: 20))
                        .foregroundColor(Color("GrayColor"))
                    Text("08123456787")
                        .font(.custom("LibreFranklin-Bold", size: 20))
                        .foregroundColor(Color("GrayColor"))
                        .padding(.bottom,41)
                }
                
                HStack{
                    Text("Invitational Code")
                        .font(.custom("LibreFranklin-Regular", size: 12))
                        .foregroundColor(Color("GrayColor"))
                        .padding(.leading,31)
                    Spacer()
                }
                ZStack{
                    RoundedRectangle(cornerRadius:8.08)
                        .frame(width: 330, height: 37.78)
                        .foregroundColor(Color(red: 238/255, green: 238/255, blue: 238/255))
                    TextField("Enter Code", text: $code)
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

                }.padding(.bottom,17.28)
                
                VStack(alignment:.leading,spacing:10){
                    Text("Your 6 digit code is on its way. This can sometimes take a")
                        .font(.custom("LibreFranklin-Regular", size: 12))
                        
                    Text("few moments to arrive.")
                        .font(.custom("LibreFranklin-Regular", size: 12))
                }.padding(.trailing,15)
                    .padding(.bottom,70)
                VStack{
                    Button {

                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 50)
                                .frame(width: 330 , height:49)
                                .foregroundColor(Color("PrimaryColor"))
                            HStack{
                                Spacer()
                                Text("Verification")
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
                .padding(.bottom,71)
//                Spacer()
            }
        }
        


    }
}

struct VerificationPhoneSignUp_Previews: PreviewProvider {
    static var previews: some View {
        VerificationPhoneSignUp()
    }
}
