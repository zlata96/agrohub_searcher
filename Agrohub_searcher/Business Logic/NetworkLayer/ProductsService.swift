// ProductsService.swift
// AgroHub_Searcher. Created by Zlata Guseva.

import Foundation
import Moya

class ProductsService: ProductsProtocol {
    var provider: MoyaProvider<ProductsAPI>

    init(provider: MoyaProvider<ProductsAPI> = MoyaProvider()) {
        self.provider = provider
    }

    func getIndex(completion: @escaping ([Product]) -> Void) {
        provider.request(.getIndex) { result in
            switch result {
            case let .success(response):
                do {
                    let results = try JSONDecoder().decode([Product].self, from: response.data)
                    completion(results)
                } catch {
                    print(error)
                }
            case let .failure(error):
                print(error)
            }
        }
    }

//    func getCategories(completion: @escaping ([Category]) -> Void) {
//        provider.request(.getCategories) { result in
//            switch result {
//            case let .success(response):
//                do {
//                    let results = try JSONDecoder().decode([Category].self, from: response.data)
//                    completion(results)
//                } catch {
//                    print(error)
//                }
//            case let .failure(error):
//                print(error)
//            }
//        }
//    }
}
