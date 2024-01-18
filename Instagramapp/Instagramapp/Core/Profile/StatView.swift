//
//  StatView.swift
//  Instagramapp
//
//  Created by Justin Li on 11/28/23.
//

import SwiftUI

struct StatView: View {
    let value: Int
    let title: String
    
    var body: some View {
        VStack {
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.semibold)
            Text(title)
                .font(.footnote)
        }
        .frame(width: 76)
    }
}

#Preview {
    StatView(value: 12, title: "Posts")
}
