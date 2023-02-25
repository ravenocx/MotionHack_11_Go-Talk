//
//  ContentView.swift
//  Eleven
//
//  Created by M Haris Sitompul on 22/02/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            MainView()
        }.navigationBarHidden(true)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
