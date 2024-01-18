//
//  SearchView.swift
//  Instagramapp
//
//  Created by Justin Li on 11/29/23.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 12) {
                    ForEach(0...15, id: \.self){  user in
                        HStack {
                            Image("zabbydaddy")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height: 40)
                                .clipShape(Circle())
                            VStack(alignment: .leading) {
                                Text("Zabbydaddy")
                                    .fontWeight(.semibold)
                                
                                Text("Zabdiel Villalobos")
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            }
                            Spacer()
                        }
                        .padding(.horizontal)
                        
                        HStack {
                            Image("shreeya")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height: 40)
                                .clipShape(Circle())
                            VStack(alignment: .leading) {
                                Text("shreeya._")
                                    .fontWeight(.semibold)
                                
                                Text("Shreeya Kantamsetty")
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            }
                            Spacer()
                        }
                        .padding(.horizontal)
                        
                        HStack {
                            Image("ben")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height: 40)
                                .clipShape(Circle())
                            VStack(alignment: .leading) {
                                Text("bennyboy")
                                    .fontWeight(.semibold)
                                
                                Text("Ben Kaheel")
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            }
                            Spacer()
                        }
                        .padding(.horizontal)
                        
                        HStack {
                            Image("millie")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height: 40)
                                .clipShape(Circle())
                            VStack(alignment: .leading) {
                                Text("millieonaire")
                                    .fontWeight(.semibold)
                                
                                Text("Millie Kembe")
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            }
                            Spacer()
                        }
                        .padding(.horizontal)
                        
                        HStack {
                            Image("sruthy")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height: 40)
                                .clipShape(Circle())
                            VStack(alignment: .leading) {
                                Text("sruthymammen_")
                                    .fontWeight(.semibold)
                                
                                Text("Sruthy Mammen")
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            }
                            Spacer()
                        }
                        .padding(.horizontal)
                    }
                }
                .padding(.top, 8)
                .searchable(text: $searchText, prompt: "Search...")
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    SearchView()
}
