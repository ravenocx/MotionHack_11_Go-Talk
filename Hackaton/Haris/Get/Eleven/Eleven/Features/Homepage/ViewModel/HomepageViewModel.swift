//
//  HomepageViewModel.swift
//  Eleven
//
//  Created by M Haris Sitompul on 25/02/23.
//

import Foundation
import SwiftUI

class HomepageViewModel: ObservableObject {
    private let dataSource: ElevenDataSource
    
    @Published var user : User?
    @Published var professions = [Professions]()
    @Published var creators = [Creators]()
    @Published var meetings = [Meetings]()
    @Published var detailCreators : Creators?
    
    
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
    
    func getProfessionList() async{
        await firstFetch()
        
        do{
            let response = try await dataSource.getProfessionList().professions
            
            DispatchQueue.main.async {
                withAnimation {
                    self.professions = response
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
