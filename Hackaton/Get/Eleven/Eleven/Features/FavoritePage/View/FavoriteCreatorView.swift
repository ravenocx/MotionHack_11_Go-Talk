//
//  FavoriteCreatorView.swift
//  Eleven
//
//  Created by M Haris Sitompul on 25/02/23.
//

import SwiftUI
import SDWebImageSwiftUI

struct FavoriteCreatorView: View {
    @ObservedObject var viewModel = FavoriteCreatorViewModel()
    var body: some View {
        VStack{
            HStack{
                Text("Liked Creators")
                    .padding(.leading,30)
                    .font(.custom("LibreFranklin-SemiBold", size: 20))
                Spacer()
            }.padding(.top,12)
            .padding(.bottom,24)
            
            VStack(spacing:24){
                ForEach(viewModel.creators.prefix(5), id:\.id){item in
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
                            Image("Heart.fill")
                                .resizable()
                                .frame(width: 22.13, height: 18.42)
                                .padding(.trailing,48.11)
                        }
                        .padding(.leading,46)
                    }
                }
            }
            
            Spacer()
        }.onAppear{
            Task{
                await viewModel.getCreatorsList()
            }
        }

    }
}

struct FavoriteCreatorView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteCreatorView()
    }
}
