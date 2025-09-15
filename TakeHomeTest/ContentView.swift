//
//  ContentView.swift
//  TakeHomeTest
//
//  Created by Aimee Temple on 2025-09-14.
//

import SwiftUI

struct ContentView: View {
    @State private var viewModel = ViewModel()
    
    var body: some View {
        NavigationStack {
            switch viewModel.loadState {
            case .failed:
                LoadFailedView(error: viewModel.loadError, retry: viewModel.loadArticles)
            default:
                if viewModel.articles.isEmpty {
                    ProgressView("Loading...")
                        .controlSize(.extraLarge)
                } else {
                    List(viewModel.articles, rowContent: ArticleRow.init)
                    .navigationTitle("Take Home Test")
                    .navigationDestination(for: Article.self, destination: ArticleView.init)
                }
            }
           
        }
        .task(viewModel.loadArticles)
    }
    
   
}

#Preview {
    ContentView()
}
