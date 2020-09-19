//
//  PostViewModel.swift
//  BlogAppCoreData
//
//  Created by Lisandro on 01/09/2020.
//

import Foundation

class PostViewModel {
    var post: Post

    init(post: Post) {
        self.post = post
    }
    var title: String {
        self.post.title ?? ""
    }

    var body: String {
        self.post.body ?? ""
    }

    var published: Bool {
        self.post.isPublished
    }
}
