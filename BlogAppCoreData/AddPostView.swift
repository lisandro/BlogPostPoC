//
//  AddPostView.swift
//  BlogAppCoreData
//
//  Created by Lisandro on 19/09/2020.
//

import SwiftUI

struct AddPostView: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject private var addPostViewModel = AddPostViewModel()
    var body: some View {
        VStack {
            TextField("Title", text: $addPostViewModel.postTitle)
            TextField("Body", text: $addPostViewModel.postBody)
            Button("Save") {
                let saved = self.addPostViewModel.savePost()
                if saved {
                    presentationMode.wrappedValue.dismiss()
                }
            }
        }
        .padding()
    }
}

struct AddPostView_Previews: PreviewProvider {
    static var previews: some View {
        AddPostView()
    }
}
