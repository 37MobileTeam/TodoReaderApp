//
//  TodoViewModel.swift
//  TodoApp (iOS)
//
//  Created by lory on 2022/1/4.
//

import Foundation

public struct VersionsViewModel {
    public static func getVersionList(completion: @escaping ([Versions]) -> Void){
        TodoV2API.todoV2VersionsGet(limit: "1000") { data, error in
            guard let data = data else {
                return
            }
            completion(data)
        }
    }
}
