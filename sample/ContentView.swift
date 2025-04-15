//
//  ContentView.swift
//  sample
//
//  Created by Sahib Hussain on 15/04/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showAlert: Bool = false
    @State private var alertMessage: String = ""
    @State private var posts: [Post] = []
    @State private var showCreatePost: Bool = false
    
    var body: some View {
        VStack {
            
            ScrollView {
                LazyVStack(spacing: 12) {
                    
                    Color.clear.frame(height: 48)
                    
                    ForEach(posts) { post in
                        VStack {
                            Text(post.title)
                                .font(.system(size: 16, weight: .semibold))
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Text(post.body)
                                .font(.system(size: 14, weight: .regular))
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        .padding(.horizontal, 16)
                        .padding(.vertical, 12)
                        .background(Color.gray.opacity(0.2))
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .padding(.horizontal, 16)
                        .redacted(reason: post.isSkeleton ? .placeholder : [])
                    }
                    
                }
            }
            
            Button(action: createPost) {
                Text("Create Post")
                    .font(.system(size: 20, weight: .bold))
                    .contentShape(Rectangle())
            }
            
        }
        .alert("Error", isPresented: $showAlert, actions: {
            Button("OK", role: .cancel) { }
        }, message: {
            Text(alertMessage)
        })
        .sheet(isPresented: $showCreatePost) {
            CreatePostView { post in
                showCreatePost.toggle()
                posts.insert(post, at: 0)
            }
        }
        .onAppear(perform: setupView)
    }
    
    
    private func setupView() {
        posts = [.init(), .init()]
        ViewModel.shared.getAllPosts { result in
            switch result {
            case .success(let posts):
                self.posts = posts
            case .failure(let error):
                alertMessage = error.localizedDescription
                showAlert.toggle()
            }
        }
    }
    
    private func createPost() { showCreatePost.toggle() }
    
}

#Preview {
    ContentView()
}
