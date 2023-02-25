//
//  WritingReviewsView.swift
//  Eleven
//
//  Created by M Haris Sitompul on 25/02/23.
//

import SwiftUI

struct WritingReviewsView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var feedback = ""
    var body: some View {
        VStack{
            HStack{
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "arrow.left")
                        .foregroundColor(Color("PrimaryColor"))
                        .frame(width: 26, height: 45)
                        .padding(.leading,26)
                }
                Text("Rating & Reviews")
                    .font(.custom("LibreFranklin-SemiBold", size: 16))
                    .padding(.leading,14)
                Spacer()
            }
            Divider()
                .padding(.bottom,45)
            HStack(spacing:16.24){
                ForEach(0..<5){_ in
                    Image("Star2")
                        .resizable()
                        .frame(width: 43.57, height: 42)
                }
            }.padding(.bottom,44)
            HStack{
                Text("Tell us your experience!")
                    .font(.custom("LibreFranklin-SemiBold", size: 16))
                    .foregroundColor(Color("PrimaryColor"))
                    .padding(.bottom,13)
                    .padding(.leading,34)
                Spacer()
            }
            ZStack{
                RoundedRectangle(cornerRadius: 9)
                    .frame(width: 330, height: 263)
                    .foregroundColor(.white)
                    .shadow(radius: 2)
                TextField("Share your thoughts here", text: $feedback)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .font(.custom("LibreFranklin-Regular", size: 12))
                    .padding(.bottom,200)
                    .padding(.leading,50)
            }
            Button {
                
            } label: {
                ZStack{
                    RoundedRectangle(cornerRadius: 50)
                        .frame(width: 316, height: 49)
                        .foregroundColor(Color("PrimaryColor"))
                    Text("Submit")
                        .font(.custom("LibreFranklin-SemiBold", size: 14))
                        .foregroundColor(.white)
                }.padding(.top,29)

            }
            Spacer()
        }
    }
}

struct WritingReviewsView_Previews: PreviewProvider {
    static var previews: some View {
        WritingReviewsView()
    }
}
