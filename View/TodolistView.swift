//
//  TodolistView.swift
//  ShowFavorited
//
//  Created by lory on 2022/1/5.
//

import Foundation
import SwiftUI

struct TodolistDetail: View {
    let todo: TodoItem
    var body: some View {
        VStack {
            Text(todo.bodyContent)
                .font(.body)
            Spacer()
            Text(todo.dueDateTime)
                .frame(width: 320, height: 20)
        }.navigationBarTitle(Text(todo.subject), displayMode: .inline)
    }
}

struct TodolistView: View {
    @State var isIgnored: Bool = false
    @State var todolist: [TodoItem] = [TodoItem]()
    @State var showDetails = true
    
    var body: some View {
        NavigationView {
            if #available(iOS 15.0, *) {
                List() {
                    Button(
                        action: { self.isIgnored.toggle() },
                        label: {
                            if self.isIgnored  {
                                Text("显示全部").foregroundColor( .orange)
                            } else {
                                Text("显示未完成").foregroundColor( .orange)
                            }
                        }
                    )
                    
                    ForEach(self.todolist) { todo in
                        if !self.isIgnored || todo.isIgnored {
                            NavigationLink(destination: TodolistDetail(todo: todo)) {
                                HStack {
                                    if self.showDetails {
                                        Text(todo.subject).foregroundColor( .blue)
                                            .font(.headline)
                                    }
                                }
                            }
                        }
                    }
                }
                .navigationBarTitle("TODO")
                .refreshable {
                    TodoViewModel.getTodoList { todolist in
                        self.todolist = todolist
                    }
                }
            } else {
                // Fallback on earlier versions
            }
        }
    }
}
