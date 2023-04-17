// ProductsAPI.swift
// AgroHub_Searcher. Created by Zlata Guseva.

import Foundation
import Moya

// MARK: - ProductsAPI

enum ProductsAPI {
    case getIndex
    case getItems
}

// MARK: BaseNetworkTarget

extension ProductsAPI: BaseNetworkTarget {
    var path: String {
        switch self {
        case .getIndex:
            return "index/"
        case .getItems:
            return "item/"
        }
    }

    var method: Moya.Method {
        switch self {
        case .getIndex, .getItems:
            return .get
        }
    }

    var task: Task {
        switch self {
        case .getIndex, .getItems:
            return .requestPlain
        }
    }
}
