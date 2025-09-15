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
                ContentUnavailableView {
                    Text("Load Error")
                        .font(.headline)
                } description: {
                    Text("There was an error loading the articles. Please try again.")
                } actions: {
                    Button("Retry") {
                        Task {
                            await viewModel.loadArticles()
                        }
                    }
                }
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
