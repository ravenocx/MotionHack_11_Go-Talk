//
//  ElevenDataSource.swift
//  Eleven
//
//  Created by M Haris Sitompul on 22/02/23.
//

import Foundation

protocol ElevenDataSource{
    func getUserList() async throws -> UserList
    func getProfessionList() async throws -> ProfessionList
    func getCreatorsList() async throws -> CreatorsList
    func getMeetingsList() async throws -> MeetingsList
    func getDetailCreator(id : String) async throws -> DetailCreator
}
