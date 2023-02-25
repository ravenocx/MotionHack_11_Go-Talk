//
//  MoyaProvider+defaultProvider.swift
//  Eleven
//
//  Created by M Haris Sitompul on 22/02/23.
//

import Foundation
import Moya

extension MoyaProvider{
    static func defaultProvider()->MoyaProvider{
        return MoyaProvider(plugins: [NetworkLoggerPlugin()])
    }
}

