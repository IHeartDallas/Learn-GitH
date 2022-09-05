//
//  MentalistModel.swift
//  Mentalist
//
//  Created by Terese Martyn on 9/3/22.
//

import Foundation

class MentalistModel: ObservableObject {
    
    @Published var quotes = [Mentalist]()

    init() {
        self.quotes = DataService.getLocalData()
    }
}

