//
//  ElevenTargetType.swift
//  Eleven
//
//  Created by M Haris Sitompul on 22/02/23.
//

import Foundation
import Moya

enum ElevenTargetType {
    case getUserList
    case getProfessionList
    case getCreatorsList
    case getMeetingsList
    case getDetailCreator(String)
}

extension ElevenTargetType : MyEleventTargetType{
    var parameters : [String : Any]{
        switch self{
        case .getUserList:
            return [ : ]
        case .getProfessionList:
            return [ : ]
        case .getCreatorsList:
            return [ : ]
        case .getMeetingsList:
            return [ : ]
        case .getDetailCreator(_):
            return [ : ]
        }
    }

    var path : String {
        switch self {
        case .getUserList:
            return "/v1/users"
        case .getProfessionList:
            return "/v1/professions"
        case .getCreatorsList:
            return "/v1/creators"
        case .getMeetingsList:
            return "/v1/meetings"
        case .getDetailCreator(let id):
            return "/v1/creators/\(id)"
        }
    }

    var parameterEncoding : Moya.ParameterEncoding{
        switch self {
        case .getUserList:
            return URLEncoding.default
        case .getProfessionList:
            return URLEncoding.default
        case .getCreatorsList:
            return URLEncoding.default
        case .getMeetingsList:
            return URLEncoding.default
        case .getDetailCreator(_):
            return URLEncoding.default
        }
    }

    var task : Task {
        return .requestParameters(parameters: parameters, encoding: parameterEncoding)
    }

    var method: Moya.Method{
        switch self{
        case .getUserList:
            return .get
        case .getProfessionList:
            return .get
        case .getCreatorsList:
            return .get
        case .getMeetingsList:
            return .get
        case .getDetailCreator(_):
            return .get
        }
    }

    var sampleData : Data {
        switch self{
        case .getUserList:
            let response = User(
                id : "3fbbfa3bb3ec8dd38af9eae969fadda4",
                name : "Kailee Funk",
                phone : "+6288295936635",
                username : "kailee77",
                profilePhoto : "https://api.dicebear.com/5.x/thumbs/png?seed=Kailee Funk",
                isVerified :false
            )
            return response.toJSONData()
        case .getProfessionList :
            let response = Professions(
                id : 3,
                name : "Doctor"
            )
            return response.toJSONData()
        case .getCreatorsList :
            let response = Creators(
                id : "3fbbfa3bb3ec8dd38af9eae969fadda4",
                name : "Kailee Funk",
                username : "kailee77",
                profilePhoto : "https://api.dicebear.com/5.x/thumbs/png?seed=Kailee Funk",
                isVerified :false,
                professions: [CreatorProfessions(id: 1, name: "Worker")],
                meetings: nil
            )
            return response.toJSONData()
        case .getMeetingsList:
            let response = Meetings(
                id: "3fbbfa3bb3ec8dd38af9eae969fadda4",
                title: "Eaque veritatis aliquid corrupti sunt quia corporis",
                description: "Expedita eius et deleniti neque perspiciatis cupiditate reiciendis ea. Doloremque fuga cupiditate.",
                price: 22281,
                slots: 431,
                startAt: "2023-02-23T15:41:19.153Z",
                endAt: "2023-02-24T03:00:15.205Z",
                isPrivate: false,
                creatorId: "a6d5aaf486aaa5906c2f5dc1efe4bcd9",
                creator: MeetingsCreators(
                    id : "3fbbfa3bb3ec8dd38af9eae969fadda4",
                    name : "Kailee Funk",
                    username : "kailee77",
                    profilePhoto : "https://api.dicebear.com/5.x/thumbs/png?seed=Kailee Funk",
                    isVerified :false,
                    professions: [CreatorProfessions(id: 1, name: "Worker")],
                    meetings: nil
                )
                
            )
            return response.toJSONData()
        case .getDetailCreator(_) :
            let response = DetailCreator(creator:Creators(
                id : "3fbbfa3bb3ec8dd38af9eae969fadda4",
                name : "Kailee Funk",
                username : "kailee77",
                profilePhoto : "https://api.dicebear.com/5.x/thumbs/png?seed=Kailee Funk",
                isVerified :false,
                professions: [CreatorProfessions(id: 1, name: "Worker")],
                meetings: [CreatorMeeting(id: "", title: "", description: "", price: 0, slots: 0, startAt: "", endAt: "", isPrivate: false, creatorId: "")]
            ) )
            return response.toJSONData()
        }
    }
}
