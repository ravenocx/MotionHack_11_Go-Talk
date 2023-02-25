//
//  TodaySessionViewModel.swift
//  Eleven
//
//  Created by M Haris Sitompul on 25/02/23.
//

import Foundation
import SwiftUI

class TodaySessionViewModel: ObservableObject {
    private let dataSource: ElevenDataSource
    
    @Published var meetings = [Meetings]()
    
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
    
    
    
    func getMeetingsList() async{
        await firstFetch()
        
        do{
            let response = try await dataSource.getMeetingsList().meetings
            
            DispatchQueue.main.async {
                withAnimation {
                    self.meetings = response
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
