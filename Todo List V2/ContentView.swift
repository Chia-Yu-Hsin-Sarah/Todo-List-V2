//
//  ContentView.swift
//  Todo List V2
//
//  Created by Sarah Chia on 5/8/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var todos = [
        Todo(title: "Get NDP tickets", isDone: true),
        Todo(title: "Watch NDP videos on YouTube", subtitle: "tomorrow's here today"),
        Todo(title: "Figure out transport to NDP"),
        Todo(title: "Get stuck in traffic")
    ]
    
    var body: some View {
        NavigationStack {
            List($todos, id: \.id) { $todo in
                NavigationLink{
                    TodoDetailView(todo: $todo)
                } label: {
                    HStack{
                        Image(systemName: todo.isDone ? "checkmark.circle.fill" : "circle")
                            .onTapGesture {
                                todo.isDone.toggle()
                            }
                        
                        VStack(alignment: .leading){
                            Text(todo.title)
                                .strikethrough(todo.isDone)
                            if !todo.subtitle.isEmpty {
                                Text(todo.subtitle)
                                    .font(.footnote)
                                    .foregroundStyle(.gray)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Todos")
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
