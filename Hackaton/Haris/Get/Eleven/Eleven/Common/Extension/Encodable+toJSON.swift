//
//  Encodable+toJSON.swift
//  Eleven
//
//  Created by M Haris Sitompul on 22/02/23.
//

import Foundation

extension Encodable{
    func toJSON()->[String: Any]{
        guard let data = try? JSONEncoder().encode(self),
              let dictionary = try? JSONSerialization.jsonObject(with: data, options: .fragmentsAllowed),
              let json = dictionary as? [String:Any] else {
            return[:]
        }
        return json
    }
    
    func toJSONData() -> Data {
        guard let data = try? JSONEncoder().encode(self) else {
            return Data()
        }
        return data
    }
}
