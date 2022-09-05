//
//  Mentalist.swift
//  Mentalist
//
//  Created by Terese Martyn on 9/3/22.
//

import Foundation

class Mentalist: Identifiable, Decodable {

    var id:UUID?
    var name: String
    var majorQuote: String
    var image: String
    var image2: String
    var quotes: [String]
}
