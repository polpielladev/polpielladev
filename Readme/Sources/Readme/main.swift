import Foundation
import ArgumentParser

struct Readme: ParsableCommand {
    @Argument(help: "The template file which which  will be used to parse and replace content.")
    var template: String
    
    @Argument(help: "The path of the destination README file.")
    var destination: String
    
    func run() throws {
        let posts = try RSSFeedLoader().load()
        let formattedPosts = MarkdownFormatter.formatPostsToString(posts)
        let newContent = try String(contentsOf: URL(fileURLWithPath: template), encoding: .utf8).replacingOccurrences(of: "{latest_blogs}", with: formattedPosts)
        try newContent.write(to: URL(fileURLWithPath: destination), atomically: true, encoding: .utf8)
    }
}

Readme.main()

