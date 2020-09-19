//
//  AddPostViewModel.swift
//  BlogAppCoreData
//
//  Created by Lisandro on 19/09/2020.
//

import Foundation

class AddPostViewModel: ObservableObject {
    var postTitle: String = ""
    var postBody: String = ""
    private var post: Post {
        let post = Post(context: PersistenceController.shared.container.viewContext)
        post.postId = UUID()
        post.title = postTitle
        post.body = postBody
        return post
    }
    func savePost() -> Bool {
        do {
            try PersistenceController.shared.savePost(post: post)
            return true
        } catch {
            print(error.localizedDescription)
        }
        return false
    }
}
