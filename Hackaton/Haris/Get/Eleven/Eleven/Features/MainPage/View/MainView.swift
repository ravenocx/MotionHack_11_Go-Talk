//
//  MainView.swift
//  Eleven
//
//  Created by M Haris Sitompul on 24/02/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            HomepageView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            ScheduleView()
                .tabItem{
                    Image(systemName: "calendar")
                    Text("Schedule")
                }
            FavoriteCreatorView()
                .tabItem{
                    Image(systemName: "heart.fill")
                    Text("Favorite")
                }

            ProfileView()
                .tabItem{
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
            
        }.accentColor(Color("PrimaryColor"))
        .onAppear {
            // correct the transparency bug for Tab bars
            let tabBarAppearance = UITabBarAppearance()
            tabBarAppearance.configureWithOpaqueBackground()
            UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
            // correct the transparency bug for Navigation bars
            let navigationBarAppearance = UINavigationBarAppearance()
            navigationBarAppearance.configureWithOpaqueBackground()
            UINavigationBar.appearance().scrollEdgeAppearance = navigationBarAppearance
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
