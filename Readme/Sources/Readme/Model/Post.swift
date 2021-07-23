//
//  Post.swift
//  
//
//  Created by Pol Piella Abadia on 23/07/2021.
//

struct Post {
    let title: String
    let link: String
}

extension Post {
    var markdown: String { "- [\(title)](\(link))" }
}
