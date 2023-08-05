//
//  New Todo View.swift
//  Todo List V2
//
//  Created by Sarah Chia on 5/8/23.
//

import SwiftUI

struct New_Todo_View: View {
    
    @Binding var sourceArray: [Todo]
    @State private var todoTitle = ""
    @State private var todoSubtitle = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Form {
            Section("Info") {
                TextField("Title", text: $todoTitle)
                TextField("Subtitle", text: $todoSubtitle)
            }
            
            Section("Actions"){
                Button("Save") {
                    let newTodo = Todo(title: todoTitle, subtitle: todoSubtitle)
                    sourceArray.append(newTodo)
                    dismiss()
                }
                Button("Cancel", role: .destructive) {
                    dismiss()
                }
            }
        }
    }
    
    struct New_Todo_View_Previews: PreviewProvider {
        static var previews: some View {
            New_Todo_View(sourceArray: .constant([]))
        }
    }
}
