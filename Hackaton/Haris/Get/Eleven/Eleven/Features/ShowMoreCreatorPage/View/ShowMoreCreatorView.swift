//
//  ShowMoreCreatorView.swift
//  Eleven
//
//  Created by M Haris Sitompul on 25/02/23.
//

import SwiftUI

struct ShowMoreCreatorView: View {
    @State var search = ""
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView{
            VStack{
                HStack {
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "arrow.left")
                            .foregroundColor(Color("PrimaryColor"))
                            .frame(width: 26, height: 45)
                            .padding(.leading,26)
                    }
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 305, height: 45)
                            .foregroundColor(Color(red: 245/255, green: 246/255, blue: 248/255))
                        TextField("Search...",text: $search)
                            .padding(.leading,47.25)
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
                        HStack{
                            Spacer()
                            ZStack{
                                RoundedRectangle(cornerRadius: 8)
                                    .frame(width: 44.68, height: 45)
                                    .foregroundColor(Color("PrimaryColor"))
                                Image("Search")
                                    .resizable()
                                    .frame(width: 24.37, height: 24.55)
                            }
                        }
                        .padding(.trailing,29)
                    }
                }
                
                // Search Result
                SearchFoundView()
                
            }
        }
    }
}

struct ShowMoreCreatorView_Previews: PreviewProvider {
    static var previews: some View {
        ShowMoreCreatorView()
    }
}
