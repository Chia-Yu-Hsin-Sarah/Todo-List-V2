//
//  Todo.swift
//  Todo List V2
//
//  Created by Sarah Chia on 5/8/23.
//

import Foundation

struct Todo: Identifiable {
    
    var id = UUID() // Universally Unique IDentifier
    var title: String
    var subtitle = ""
    var isDone = false
}
