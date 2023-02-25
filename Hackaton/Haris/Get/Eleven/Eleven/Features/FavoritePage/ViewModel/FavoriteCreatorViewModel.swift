//
//  FavoriteCreatorViewModel.swift
//  Eleven
//
//  Created by M Haris Sitompul on 25/02/23.
//

import Foundation
import SwiftUI

class FavoriteCreatorViewModel: ObservableObject{
    private let dataSource: ElevenDataSource
    @Published var creators = [Creators]()
    
    @Published var isError = false
    @Published var errorMessage = ""
    
    init (dataSource: ElevenDataSource = ElevenDefaultDataSource()){
        self.dataSource = dataSource
    }
    @MainActor func firstFetch(){
        self.isError = false
        self.errorMessage = ""
    }
    

    
    func getCreatorsList() async{
        await firstFetch()
        
        do{
            let response = try await dataSource.getCreatorsList().creators
            
            DispatchQueue.main.async {
                withAnimation {
                    self.creators = response
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

