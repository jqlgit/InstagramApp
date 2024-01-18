//
//  UploadPostView.swift
//  Instagramapp
//
//  Created by Justin Li on 11/29/23.
//

import SwiftUI
import PhotosUI

struct UploadPostView: View {
    @State private var caption = ""
    @State private var ImagePickerPresented = false
    @StateObject var viewModel = UploadPostViewModel()
    @Binding var tabIndex: Int
    var body: some View {
        VStack {
            //action toolbar
            HStack {
                Button {
                    caption = ""
                    viewModel.selectedImage = nil
                    viewModel.postImage = nil
                    tabIndex = 0
                } label: {
                    Text("Cancel")
                }
                Spacer()
                
                Text("New Post")
                    .fontWeight(.semibold)
                Spacer()
                
                Button {
                    print("Upload")
                } label: {
                    Text("Upload")
                        .fontWeight(.semibold)
                }
            }
            .padding(.horizontal)
            //post image and caption
            HStack(spacing: 8) {
                if let image = viewModel.postImage {
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .clipped()
                }
                
                TextField("Enter your caption...", text: $caption, axis: .vertical)
            }
            .padding()
            
            Spacer()
        }
        .onAppear() {
            ImagePickerPresented.toggle()
        }
        .photosPicker(isPresented: $ImagePickerPresented, selection: $viewModel.selectedImage)
    }
}

#Preview {
    UploadPostView(tabIndex: .constant(0))
}
