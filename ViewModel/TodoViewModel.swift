//
//  TodoViewModel.swift
//  TodoApp (iOS)
//
//  Created by lory on 2022/1/4.
//

import Foundation

public struct TodoViewModel {
    public static func getTodoList(completion: @escaping ([TodoItem]) -> Void){
        TodoV2API.todoV2TodolistGet(limit: "1000") { data, error in
            guard let data = data else {
                return
            }
            completion(data)
        }
    }
}
