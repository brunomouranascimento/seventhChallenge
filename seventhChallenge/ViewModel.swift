//
//  ViewModel.swift
//  seventhChallenge
//
//  Created by Bruno Nascimento on 09/05/22.
//

import Foundation

class ViewModel: ObservableObject {
    @Published var names = ["João", "Pedro", "Michel", "Maria", "Ana", "Bruno", "Zé", "Paulo"]
    var isFiltered: Bool = false
    var isOrdered: Bool = false

    
    func filter() {
        self.isFiltered = !self.isFiltered
        if isFiltered {
            self.names = self.names.filter { name in
                name.count <= 4
            }
        } else {
            self.names = ["João", "Pedro", "Michel", "Maria", "Ana", "Bruno", "Zé", "Paulo"]
        }
    }
    
    func order() {
        self.isOrdered = !self.isOrdered
        if isOrdered {
            self.names = self.names.sorted(by: { a, b in
                a < b
            })
        } else {
            self.names = ["João", "Pedro", "Michel", "Maria", "Ana", "Bruno", "Zé", "Paulo"]
        }
    }
}
