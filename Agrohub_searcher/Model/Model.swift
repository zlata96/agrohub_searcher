// Model.swift
// AgroHub_Searcher. Created by Zlata Guseva.

import Foundation

struct Product: Codable {
    let id: Int
    let image: String
    let name, description: String
    let documentation: String?
}
