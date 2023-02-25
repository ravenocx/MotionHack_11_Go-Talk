//
//  UserView.swift
//  Eleven
//
//  Created by M Haris Sitompul on 22/02/23.
//

import SwiftUI

struct UserView: View {
    @ObservedObject var userViewModel = UserViewModel()
    @State var isShow = false
    var body: some View {
        VStack (spacing:20){
            ScrollView{
//                print(userViewModel.creators)
                Text("============ Name ============")
                Text(userViewModel.user?.username ?? "")
                Text("============ Professions ============")
                ForEach(userViewModel.professions, id: \.id) { item in
                    Text(item.name ?? "")
                }
                Text("============ Creators ============")
                ForEach(userViewModel.creators, id: \.id) { item in
                    Text(item.name ?? "")
                        .onTapGesture {
                            Task{
                                await userViewModel.getDetailCreatorList(id:item.id ?? "")
                                DispatchQueue.main.asyncAfter(deadline: .now()+1){
//                                    print(userViewModel.detailCreators)
                                    isShow.toggle()
                                }
                            }
                        }
                }
                Text("=====")
                Text(userViewModel.detailCreators?.name ?? "")
//                Text("============ Meetings ============")
//                ForEach(userViewModel.meetings, id: \.id) { item in
//                    Text(item.title ?? "")
//                }
            }
        }
        .sheet(isPresented: $isShow, content: {
            Text(userViewModel.name)
        })
        .onAppear{
            Task{
                await userViewModel.getUserList()
                await userViewModel.getProfessionList()
                await userViewModel.getCreatorsList()
                await userViewModel.getMeetingsList()
                
            }
        }
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
