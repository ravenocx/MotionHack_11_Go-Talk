//
//  CreatorProfileViewModel.swift
//  Eleven
//
//  Created by M Haris Sitompul on 25/02/23.
//

import Foundation
import SwiftUI

class CreatorProfileViewModel: ObservableObject {
    private let dataSource: ElevenDataSource
    
    @Published var detailCreators : Creators?
    @Published var selectedUser = ""
    
    
    @Published var name = ""
    
    @Published var isError = false
    @Published var errorMessage = ""
    
    init (dataSource: ElevenDataSource = ElevenDefaultDataSource()){
        self.dataSource = dataSource
    }
    
    @MainActor func firstFetch(){
        self.isError = false
        self.errorMessage = ""
    }
    
    func getDetailCreatorList(id : String) async{
        await firstFetch()
        
        do{
            let response = try await dataSource.getDetailCreator(id: id).creator
            
            DispatchQueue.main.async {
                withAnimation {
                    self.detailCreators = response
                    self.name = response.name ?? ""
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
