//
//  WeElevenTargetType.swift
//  Eleven
//
//  Created by M Haris Sitompul on 22/02/23.
//

import Foundation
import Moya

protocol MyEleventTargetType : TargetType{
    var parameters : [String:Any]{
        get
    }
}

extension MyEleventTargetType{
    var baseURL: URL{
        return URL(string: "https://api.hackathon.dinotis.com") ?? (NSURL() as URL)
    }
    
    var parameterEncoding: Moya.ParameterEncoding{
        JSONEncoding.default
    }
    
    var task: Task{
        return .requestParameters(parameters: parameters, encoding: parameterEncoding)
    }
    
    var headers: [String : String]? {
        return[:]
    }
    
}
