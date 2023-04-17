// ProductsProtocol.swift
// AgroHub_Searcher. Created by Zlata Guseva.

import Moya

protocol ProductsProtocol {
    func getIndex(completion: @escaping ([Product]) -> Void)
    // func getItems(completion: @escaping ([Category]) -> Void)
}
