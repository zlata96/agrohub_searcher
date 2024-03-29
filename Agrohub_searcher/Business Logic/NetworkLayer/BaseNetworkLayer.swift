// BaseNetworkLayer.swift
// AgroHub_Searcher. Created by Zlata Guseva.

import Foundation
import Moya

// MARK: - BaseNetworkTarget

protocol BaseNetworkTarget: TargetType {}

extension BaseNetworkTarget {
    var parameterEncoding: ParameterEncoding {
        JSONEncoding.default
    }

    var headers: [String: String]? {
        ["Content-type": "application/json"]
    }

    var baseURL: URL {
        guard let url = URL(string: "http://shans.d2.i-partner.ru/api/ppp/") else {
            fatalError("baseURL could not be configured.")
        }
        return url
    }

    var sampleData: Data {
        Data()
    }
}
