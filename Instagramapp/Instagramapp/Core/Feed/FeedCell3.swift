//
//  FeedCell3.swift
//  Instagramapp
//
//  Created by Justin Li on 12/2/23.
//

import SwiftUI

struct FeedCell3: View {
    @State private var isLiked = false
    @State private var likeCount = 157
    var body: some View {
        VStack {
            //image username
            HStack {
                Image("ben")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 36, height: 36)
                    .clipShape(Circle())
                
                Text("bennyboy")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Spacer()
            }
            .padding(.leading, 8)
            
            //post
            
            Image("ben")
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .clipShape(Rectangle())
            
            //action buttons
            HStack(spacing: 16) {
                Button(action: {
                    isLiked.toggle()
                    likeCount += isLiked ? 1 : -1
                }) {
                    Image(systemName: isLiked ? "heart.fill" : "heart")
                        .imageScale(.large)
                        .foregroundColor(isLiked ? .red : .black)
                }
                Button {
                    print("Comment on post")
                } label: {
                    Image(systemName: "bubble.right")
                        .imageScale(.large)
                }
                Button {
                    print("Share post")
                } label: {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
                Spacer()
            }
            .padding(.leading, 8)
            .padding(.top, 4)
            .foregroundColor(.black)
            
            //likes label
            Text("\(likeCount) likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
            
            //caption label
            HStack {
                Text("bennyboy ").fontWeight(.semibold) +
                Text("this is test caption")
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(.footnote)
            .padding(.leading, 10)
            .padding(.top, 1)
            
            Text("6h ago")
                .font(.footnote)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
                .foregroundColor(.gray)
        }
    }
}

#Preview {
    FeedCell3()
}
