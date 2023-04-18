// String+Extension.swift
// AgroHub_Searcher. Created by Zlata Guseva.

import Foundation

extension String {
    var preparedStringForURL: String {
        guard let url = addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) else { return " " }
        return url
    }
}
