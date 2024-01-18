//
//  FeedView.swift
//  Instagramapp
//
//  Created by Justin Li on 11/28/23.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 32) {
                    ForEach(0...10, id: \.self) { post in
                        FeedCell()
                        FeedCell2()
                        FeedCell3()
                        FeedCell4()
                        FeedCell5()
                    }
                }
                .padding(.top, 8)
            }
            .navigationTitle("Feed")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image("instagram")
                        .resizable()
                        .frame(width: 150, height: 80)
                        .padding(.leading, -20)
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "heart")
                        .imageScale(.large)
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
            }
        }
    }
}

#Preview {
    FeedView()
}
