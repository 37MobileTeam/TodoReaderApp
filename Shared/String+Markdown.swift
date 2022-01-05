//
//  String+Markdown.swift
//  TodoApp
//
//  Created by lory on 2022/1/5.
//

import Foundation

extension String {
    func markdownToAttributed() -> AttributedString {
        do {
            return try AttributedString(markdown: self) /// convert to AttributedString
        } catch {
            return AttributedString("Error parsing markdown: \(error)")
        }
    }
}
