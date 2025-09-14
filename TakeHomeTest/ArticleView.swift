//
//  ArticleView.swift
//  TakeHomeTest
//
//  Created by Aimee Temple on 2025-09-14.
//

import SwiftUI

struct ArticleView: View {
    
    var article: Article
    
    var body: some View {
        ScrollView {
            Text(article.text)
                .padding(.horizontal)
        }
        
    }
}

#Preview {
    ArticleView(article: .example)
}
