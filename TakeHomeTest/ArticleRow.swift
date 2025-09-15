//
//  ArticleRow.swift
//  TakeHomeTest
//
//  Created by Aimee Temple on 2025-09-15.
//

import SwiftUI

struct ArticleRow: View {
    
    var article: Article
    
    var body: some View {
        NavigationLink(value: article) {
            HStack {
                AsyncImage(url: article.thumbnail) { phase in
                    switch phase {
                    case .empty:
                        ProgressView()
                        
                    case .success(let image):
                        image
                            .resizable()
                            .scaledToFill()
                        
                    default:
                        Image(systemName: "newspaper")
                        
                    }
                }
                .frame(width: 80, height: 80)
                .clipShape(.rect(cornerRadius: 10))
                
                VStack(alignment: .leading) {
                    Text(article.section)
                        .font(.caption.weight(.heavy))
                    
                    Text(article.title)
                }
            }
        }
    }
}

#Preview {
    ArticleRow(article: .example)
}
