//
//  SearchNotFoundSwift.swift
//  Eleven
//
//  Created by M Haris Sitompul on 24/02/23.
//

import SwiftUI

struct SearchNotFoundView: View {
    var body: some View {
        VStack{
            Spacer()
            ZStack{
                RoundedRectangle(cornerRadius: 27)
                    .frame(width: 236.96, height: 216.41)
                    .foregroundColor(Color(red: 230/255, green: 241/255, blue: 255/255))
                Image("SearchNF")
                    .resizable()
                    .frame(width: 277, height: 277)
                    .padding(.bottom,65)
            }
            Text("Woops...")
                .font(.custom("LibreFranklin-Bold", size: 24))
                .foregroundColor(Color("PrimaryColor3"))
                .padding(.bottom)
            Text("What you're looking for does not exist")
                .font(.custom("LibreFranklin-Regular", size: 14))
                .foregroundColor(Color("PrimaryColor3"))
            Spacer()
        }

    }
}

struct SearchNotFoundView_Previews: PreviewProvider {
    static var previews: some View {
        SearchNotFoundView()
    }
}
