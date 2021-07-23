//
//  PostFeedLoader.swift
//  
//
//  Created by Pol Piella Abadia on 23/07/2021.
//

protocol PostFeedLoader {
    func load() throws ->  [Post]
}
