//
//  ProfileViewModel.swift
//  Eleven
//
//  Created by M Haris Sitompul on 25/02/23.
//

import Foundation
import SwiftUI

class ProfileViewModel: ObservableObject {
    private let dataSource: ElevenDataSource
    
    @Published var user : User?
    
    
    @Published var isError = false
    @Published var errorMessage = ""
    
    init (dataSource: ElevenDataSource = ElevenDefaultDataSource()){
        self.dataSource = dataSource
    }
    
    @MainActor func firstFetch(){
        self.isError = false
        self.errorMessage = ""
    }
    
    func getUserList() async{
        await firstFetch()
        
        do{
            let response = try await dataSource.getUserList().user
            
            DispatchQueue.main.async {
                withAnimation {
                    self.user = response
                }
            }
        }
        catch {
            DispatchQueue.main.async {
                withAnimation {
                    self.errorMessage = error.localizedDescription
                    self.isError = true
                }
            }
            
        }
    }
    
}
