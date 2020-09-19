//
//  PostListViewModel.swift
//  BlogAppCoreData
//
//  Created by Lisandro on 01/09/2020.
//

import Foundation

class PostListViewModel: ObservableObject {
    @Published var posts = [PostViewModel]()

    func fetchAllPosts() {
        DispatchQueue.main.async {
            self.posts = PersistenceController.shared.getAllPosts().map(PostViewModel.init)
        }
    }
}
