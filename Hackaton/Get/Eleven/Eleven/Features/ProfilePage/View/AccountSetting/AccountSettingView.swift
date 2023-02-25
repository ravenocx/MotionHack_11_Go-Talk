//
//  AccountSettingView.swift
//  Eleven
//
//  Created by M Haris Sitompul on 25/02/23.
//

import SwiftUI

struct AccountSettingView: View {
    var body: some View {
        VStack{
            HStack{
                Text("My Profile")
                    .font(.custom("LibreFranklin-Bold", size: 20))
                Spacer()
            }
            .padding(.leading,30)
            .padding(.top,25)
            Divider()
        }
    }
}

struct AccountSettingView_Previews: PreviewProvider {
    static var previews: some View {
        AccountSettingView()
    }
}
