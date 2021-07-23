//
//  MarkdownFormatter.swift
//  
//
//  Created by Pol Piella Abadia on 23/07/2021.
//

struct MarkdownFormatter {
    static func formatPostsToString(_ posts: [Post]) -> String {
        posts.map { $0.markdown }.joined(separator: "\n")
    }
}
