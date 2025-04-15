//
//  CreatePostView.swift
//  sample
//
//  Created by Sahib Hussain on 15/04/25.
//

import SwiftUI

struct CreatePostView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    let onSubmit: (Post) -> Void
    
    @State private var showAlert: Bool = false
    @State private var alertMessage: String = ""
    @State private var title: String = ""
    @State private var desc: String = ""
    @State private var isLoading: Bool = false
    
    @FocusState private var focusedField: Int?
    
    var body: some View {
        VStack {
            
            HStack {
                Button(action: { dismiss() }) {
                    Image(systemName: "xmark")
                        .frame(width: 35, height: 35)
                        .foregroundStyle(Color.primary)
                        .contentShape(Rectangle())
                }
                Spacer()
            }
            .padding(.horizontal, 16)
            
            Form {
                TextField("Enter title", text: $title)
                    .focused($focusedField, equals: 1)
                TextEditor(text: $desc)
                    .focused($focusedField, equals: 2)
                    .frame(height: 150)
                    .font(.system(size: 17))
                    .scrollContentBackground(.hidden)
                    .background {
                        Group {
                            if desc.isEmpty {
                                VStack {
                                    Color.clear.frame(height: 2)
                                    HStack {
                                        Text("Enter body of your post...")
                                            .font(.system(size: 17))
                                            .foregroundColor(.gray.opacity(0.5))
                                            .padding(.leading, 2)
                                            .allowsHitTesting(false)
                                        Spacer()
                                    }
                                    Spacer()
                                }
                            }
                        }
                    }
                Button(action: submit) {
                    Text("Submit")
                        .font(.headline)
                        .frame(height: 45)
                        .frame(maxWidth: .infinity)
                        .contentShape(Rectangle())
                }
            }
        }
        .overlay(content: {
            if isLoading {
                VStack {
                    ProgressView()
                        .tint(.white)
                        .frame(width: 100, height: 100)
                        .progressViewStyle(.circular)
                }
                .background(Color.black.opacity(0.3))
                .clipShape(RoundedRectangle(cornerRadius: 12))
            }
        })
        .animation(.easeInOut, value: isLoading)
        .alert("Error", isPresented: $showAlert, actions: {
            Button("OK", role: .cancel) { }
        }, message: {
            Text(alertMessage)
        })
    }
    
    private func submit() {
        
        guard title.count > 3, desc.count > 3 else {
            alertMessage = "Title and body must be longer than 3 characters."
            showAlert = true
            return
        }
        
        focusedField = nil
        isLoading = true
        ViewModel.shared.createPost(title, body: desc) { result in
            isLoading = false
            switch result {
            case .success(let post): onSubmit(post)
            case .failure(let failure):
                alertMessage = failure.localizedDescription
                showAlert = true
            }
        }
        
    }
    
}

#Preview {
    CreatePostView { _ in }
}
