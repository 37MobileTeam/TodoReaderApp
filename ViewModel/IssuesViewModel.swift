//
//  TodoViewModel.swift
//  TodoApp (iOS)
//
//  Created by lory on 2022/1/4.
//

import Foundation

public struct IssuesViewModel {
    public static func getIssuesList(completion: @escaping ([Issues]) -> Void){
        TodoV2API.todoV2IssuesGet(limit: "1000") { data, error in
            guard let data = data else {
                return
            }
            completion(data)
        }
    }
}
