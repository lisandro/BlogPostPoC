//
//  PostDetailView.swift
//  BlogAppCoreData
//
//  Created by Lisandro on 20/09/2020.
//

import SwiftUI

struct PostDetailView: View {
    let post: PostViewModel
    @ObservedObject private var updateVM = PostUpdateViewModel()
    @State private var postViewState = PostEditViewState()
    var body: some View {
        VStack {

            TextField(post.title, text: $postViewState.title)
            TextField(post.body, text: $postViewState.body)

            Button("Update") {
                self.postViewState.postId = self.post.postId
                self.updateVM.update(postViewState: postViewState)
            }
            .onAppear {
                self.postViewState.title = self.post.title
                self.postViewState.body = self.post.body
            }
        }
    }
}

struct PostDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let post = Post()
        return PostDetailView(post: PostViewModel(post: post))
    }
}
