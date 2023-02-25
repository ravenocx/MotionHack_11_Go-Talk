//
//  ElevenDefaultDataSource.swift
//  Eleven
//
//  Created by M Haris Sitompul on 22/02/23.
//

import Foundation
import Moya

final class ElevenDefaultDataSource : ElevenDataSource{
    private let provider : MoyaProvider<ElevenTargetType>
    
    init(provider : MoyaProvider<ElevenTargetType> = .defaultProvider()){
        self.provider = provider
    }
    
    func getUserList() async throws -> UserList {
        try await self.provider.requestAsync(.getUserList, model: UserList.self)
    }
    
    func getProfessionList() async throws -> ProfessionList {
        try await self.provider.requestAsync(.getProfessionList, model: ProfessionList.self)
    }
    
    func getCreatorsList() async throws -> CreatorsList {
        try await self.provider.requestAsync(.getCreatorsList, model: CreatorsList.self)
    }
    
    func getMeetingsList() async throws -> MeetingsList {
        try await self.provider.requestAsync(.getMeetingsList, model: MeetingsList.self)
    }
    
    func getDetailCreator(id : String) async throws -> DetailCreator {
        try await self.provider.requestAsync(.getDetailCreator(id), model: DetailCreator.self)
    }

}
