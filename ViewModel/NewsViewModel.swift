//
//  TodoViewModel.swift
//  TodoApp (iOS)
//
//  Created by lory on 2022/1/4.
//

import Foundation

public struct NewsViewModel {
    public static func getNewsList(completion: @escaping ([News]) -> Void){
        TodoV2API.todoV2NewsGet(limit: "1000") { data, error in
            guard let data = data else {
                return
            }
            completion(data)
        }
    }
}
