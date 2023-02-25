//
//  PrivateCallView.swift
//  Eleven
//
//  Created by M Haris Sitompul on 24/02/23.
//

import SwiftUI

struct PrivateCallView: View {
    var body: some View {
        VStack{
            Image("PrivateCall")
                .resizable()
                .frame(width: 188, height: 188)
                .padding(.bottom)
            Text("Unfortunately, there is no private")
                .font(.custom("LibreFranklin-SemiBold", size: 20))
                .foregroundColor(Color("PrimaryColor"))
                .padding(.bottom,4)
            Text("call schedule yet")
                .font(.custom("LibreFranklin-SemiBold", size: 20))
                .foregroundColor(Color("PrimaryColor"))

            
            
        }
    }
}

struct PrivateCallView_Previews: PreviewProvider {
    static var previews: some View {
        PrivateCallView()
    }
}
