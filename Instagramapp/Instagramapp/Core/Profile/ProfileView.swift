//
//  ProfileView.swift
//  Instagramapp
//
//  Created by Justin Li on 11/28/23.
//

import SwiftUI

struct ProfileView: View {
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                //header
                VStack(spacing: 10) {
                    // pic and stats
                    HStack {
                        Image("profile")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                        
                        Spacer()
                        
                        HStack(spacing: 8) {
                            StatView(value: 6, title: "Posts")
                            StatView(value: 12, title: "Followers")
                            StatView(value: 3, title: "Following")
                        }
                    }
                    .padding(.horizontal)
                    //name bio
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Justin Li")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        Text("Developed by me in SwiftUI")
                            .font(.footnote)
                        Text("App Team Carolina")
                            .font(.footnote)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    
                    //action
                    Button {
                        
                    } label: {
                        Text("Edit Profile")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 360, height: 32)
                            .foregroundColor(.black)
                            .overlay(
                                RoundedRectangle(cornerRadius: 6)
                                    .stroke(Color.gray, lineWidth: 1))
                    }

                    Divider()
                }
                //post grid view
                
                LazyVGrid(columns: gridItems, spacing: 1) {
                    ForEach(0...5, id: \.self) { index in
                        Image("appteam")
                            .resizable()
                            .scaledToFill()
                    }
                }
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(.black)
                    }
                }
            }
        }
    }
}

#Preview {
    ProfileView()
}
