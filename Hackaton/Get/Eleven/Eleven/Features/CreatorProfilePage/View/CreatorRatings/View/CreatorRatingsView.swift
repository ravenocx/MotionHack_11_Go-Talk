//
//  CreatorRatingsView.swift
//  Eleven
//
//  Created by M Haris Sitompul on 24/02/23.
//

import SwiftUI

struct CreatorRatingsView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    
    
    var body: some View {
        VStack{
            ScrollView{
                HStack{
                    Spacer()
                    VStack{
                        Text("4.3")
                            .font(.custom("LibreFranklin-Medium", size: 20))
                        Image("RatingStar")
                            .padding(.bottom,7.56)
                        Text("312 Ratings")
                            .font(.custom("LibreFranklin-Medium", size: 10))
                    }
                    Spacer()
                    Image("VerticalLine")
                    Spacer()
                    VStack{
                        HStack{
                            Text("5")
                                .font(.custom("LibreFranklin-Medium", size: 8))
                            Image("5 Star Ratings")
                        }
                        HStack{
                            Text("4")
                                .font(.custom("LibreFranklin-Medium", size: 8))
                            Image("4 Star Ratings")
                        }
                        HStack{
                            Text("3")
                                .font(.custom("LibreFranklin-Medium", size: 8))
                            Image("3 Star Ratings")
                        }
                        HStack{
                            Text("2")
                                .font(.custom("LibreFranklin-Medium", size: 8))
                            Image("2 Star Ratings")
                        }
                        HStack{
                            Text("1")
                                .font(.custom("LibreFranklin-Medium", size: 8))
                            Image("1 Star Ratings")
                        }
                        
                    }
                    Spacer()
                }
                .padding(.bottom,31)
                HStack{
                    ZStack{
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 134, height: 27)
                            .foregroundColor(Color("PrimaryColor"))
                        HStack{
                            Text("Most Relevant")
                                .font(.custom("LibreFranklin-Medium", size: 8))
                                .foregroundColor(.white)
                                .padding(.trailing,35)
                            Image("VCIcon2")
                                .resizable()
                                .frame(width: 8, height: 6)
                        }
                    }
                    Spacer()
                }
                .padding(.bottom,30)
                .padding(.leading,31)
                
                ForEach(0..<5){_ in
                    VStack(alignment: .leading){
                        HStack{
                            Image("ProfilePict")
                                .resizable()
                                .frame(width: 38, height: 38)
                            Text("Joya Isaura")
                                .font(.custom("LibreFranklin-SemiBold", size: 16))
                        }.padding(.bottom,11)
                        HStack{
                            Image("5 Star")
                            Text("•  More than 20 days ago")
                                .font(.custom("LibreFranklin-Medium", size: 8))
                        }
                        Text("Talking with Alexis was very insightful and helps me in")
                            .font(.custom("LibreFranklin-Regular", size: 12))
                            .padding(.top,7.56)
                        Text("developing my interest in music field")
                            .font(.custom("LibreFranklin-Regular", size: 12))
                            .padding(.top,1)
                        HStack(spacing:5){
                            Image(systemName: "hand.thumbsup")
                                .foregroundColor(.gray)
                                .opacity(0.5)
                            Text("Helpful?")
                                .font(.custom("LibreFranklin-Medium", size: 10))
                                .foregroundColor(.gray)
                                .opacity(0.5)
                                .padding(.top,4)
                        }
                        
                    }.padding(.bottom,17)
                    Divider()
                        .padding(.bottom,27)
                }
                
                
                
                
            }
        }.navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: ButtonBack)
        .navigationTitle(Text("Ratings & Reviews").font(.custom("LibreFranklin-Medium", size: 16)))
        .navigationBarTitleDisplayMode(.inline)
            
    }
    var ButtonBack : some View { Button(action: {
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

struct CreatorRatingsView_Previews: PreviewProvider {
    static var previews: some View {
        CreatorRatingsView()
    }
}
