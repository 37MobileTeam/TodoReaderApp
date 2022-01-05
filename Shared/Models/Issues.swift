//
// Issues.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct Issues: Codable, Identifiable {
    public var reference: [String]
    public var images: [String]
    public var id: Int
    public var title: String
    public var date: String
    public var resolved: Bool
    public var description: String
    public var attachment: [String]

    public init(reference: [String], images: [String], id: Int, title: String, date: String, resolved: Bool, description: String, attachment: [String]) {
        self.reference = reference
        self.images = images
        self.id = id
        self.title = title
        self.date = date
        self.resolved = resolved
        self.description = description
        self.attachment = attachment
    }

}
