//
//  SearchFoundView.swift
//  Eleven
//
//  Created by M Haris Sitompul on 24/02/23.
//

import SwiftUI
import SDWebImageSwiftUI

struct SearchFoundView: View {
    @ObservedObject var viewModel = CreatorListViewModel()
    var body: some View {
        NavigationView{
            ScrollView{
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing:7){
                    if viewModel.currentTab == 0{
                        Button {
                            viewModel.currentTab = 0
                        } label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 8)
                                    .foregroundColor(Color("PrimaryColor"))
                                    .frame(width: 89, height: 21)
                                Text("All")
                                    .font(.custom("LibreFranklin-Medium", size: 8))
                                    .foregroundColor(.white)
                            }
                        }
                    }else {
                        Button {
                            viewModel.currentTab = 0
                        } label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(lineWidth: 1.5)
                                    .foregroundColor(Color("PrimaryColor"))
                                    .frame(width: 89, height: 21)
                                Text("All")
                                    .font(.custom("LibreFranklin-Medium", size: 8))
                                    .foregroundColor(Color("PrimaryColor"))
                            }
                        }

                        
                    }
                    
                    ForEach(viewModel.professions, id: \.id) { item in
                        Button {
                            viewModel.currentTab = item.id ?? 0
                            viewModel.currentProfessionTab = item.name ?? ""
                        } label: {
                            ZStack{
                                if viewModel.currentTab == item.id {
                                    RoundedRectangle(cornerRadius: 8)
                                        .foregroundColor(Color("PrimaryColor"))
                                        .frame(width: 89, height: 21)
                                    Text(item.name ?? "")
                                        .font(.custom("LibreFranklin-Medium", size: 8))
                                        .foregroundColor(.white)
                                }else {
                                    RoundedRectangle(cornerRadius: 8)
                                        .stroke(lineWidth: 1.5)
                                        .foregroundColor(Color("PrimaryColor"))
                                        .frame(width: 89, height: 21)
                                    Text(item.name ?? "")
                                        .font(.custom("LibreFranklin-Medium", size: 8))
                                        .foregroundColor(Color("PrimaryColor"))
                                }
                            }
                                
                                
                            
                        }

                        
                    }
                    

                }
                
            }
            .padding(.leading,30)
            .padding(.top,23)
            .padding(.bottom,23)
            
            VStack(spacing:24){
                if viewModel.currentTab == 0{
                    ForEach(viewModel.creators, id:\.id){item in
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
                        }
                    }
                } else {
                    ForEach(viewModel.creators, id:\.id){creator in
                        ForEach(creator.professions ?? [], id:\.id){item in
                            if item.name == viewModel.currentProfessionTab{
                                ZStack{
                                    RoundedRectangle(cornerRadius: 12)
                                        .frame(width: 330, height: 88)
                                        .foregroundColor(.white)
                                        .shadow(radius: 2)
                                    HStack{
                                        WebImage(url: URL(string: creator.profilePhoto ?? ""))
                                            .resizable()
                                            .frame(width: 64, height: 64)
                                            .cornerRadius(44)
                                            .padding(.trailing,20.61)
                                        VStack(alignment: .leading, spacing:8){
                                            Text(creator.name ?? "")
                                                .font(.custom("LibreFranklin-SemiBold", size: 14))
                                            VStack(alignment: .leading){
                                                HStack{
                                                    Image("ProfessionPict")
                                                        .resizable()
                                                        .frame(width: 12.5, height: 12)
                                                    Text(viewModel.currentProfessionTab)
                                                        .font(.custom("LibreFranklin-Medium", size: 8))
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
                                }
                            }
                            
                        }
                    }
                }
                
            }

        }}.onAppear{
            Task{
                await viewModel.getCreatorsList()
                await viewModel.getProfessionList()
        }
        }
    }
}

struct SearchFoundView_Previews: PreviewProvider {
    static var previews: some View {
        SearchFoundView()
    }
}
