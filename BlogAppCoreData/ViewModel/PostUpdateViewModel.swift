//
//  PostUpdateViewModel.swift
//  BlogAppCoreData
//
//  Created by Lisandro on 20/09/2020.
//

import Foundation

class PostUpdateViewModel: ObservableObject {
    func update(postViewState: PostEditViewState) {
        do {
            try PersistenceController.shared.updatePost(postId: postViewState.postId, title: postViewState.title, body: postViewState.body)
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct PostEditViewState {
    var postId: String = ""
    var title: String = ""
    var body: String = ""
}
