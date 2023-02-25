//
//  User.swift
//  Eleven
//
//  Created by M Haris Sitompul on 22/02/23.
//

import Foundation

struct UserList:Codable {
    let user: User
}

struct User:Codable {
    let id: String?
    let name: String?
    let phone: String?
    let username: String?
    let profilePhoto: String?
    let isVerified: Bool
    
    enum CodingKeys: String, CodingKey {
        case id, name, phone, username, profilePhoto, isVerified
    }
}


struct ProfessionList : Codable{
    let professions : [Professions]
}


struct Professions:Codable {
    let id: Int?
    let name: String?

    
    enum CodingKeys: String, CodingKey {
        case id, name
    }
}

struct CreatorProfessions:Codable {
    let id: Int?
    let name: String?

    
    enum CodingKeys: String, CodingKey {
        case id, name
    }
}

struct CreatorsList:Codable {
    let creators : [Creators]
}

struct Creators:Codable {
    let id: String?
    let name: String?
    let username: String?
    let profilePhoto: String?
    let isVerified: Bool?
    let professions : [CreatorProfessions]?
    let meetings : [CreatorMeeting]?
    
    enum CodingKeys: String, CodingKey {
        case id, name, username, profilePhoto, isVerified, professions, meetings
    }
}

struct CreatorMeeting : Codable{
    let id : String?
    let title : String?
    let description : String?
    let price : Int?
    let slots : Int?
    let startAt : String?
    let endAt : String?
    let isPrivate : Bool?
    let creatorId : String?
    
    enum CodingKeys: String, CodingKey {
        case id, title, description, price, slots, startAt, endAt, isPrivate, creatorId
    }
}

struct MeetingsCreators:Codable {
    let id: String?
    let name: String?
    let username: String?
    let profilePhoto: String?
    let isVerified: Bool?
    let professions : [CreatorProfessions]?
    let meetings : [CreatorMeeting]?
    
    enum CodingKeys: String, CodingKey {
        case id, name, username, profilePhoto, isVerified, professions, meetings
    }
}


struct MeetingsList:Codable{
    let meetings: [Meetings]
}

struct Meetings:Codable{
    let id : String?
    let title : String?
    let description : String?
    let price : Int?
    let slots : Int?
    let startAt : String?
    let endAt : String?
    let isPrivate : Bool
    let creatorId : String?
    let creator : MeetingsCreators
    
    enum CodingKeys: String, CodingKey {
        case id, title, description, price, slots, startAt, endAt, isPrivate, creatorId, creator
    }
}

//struct DetailCreatorList:Codable {
//    let detailCreator: DetailCreator
//}

struct DetailCreator: Codable {
    let creator : Creators
}
