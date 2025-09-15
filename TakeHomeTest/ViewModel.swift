//
//  ViewModel.swift
//  TakeHomeTest
//
//  Created by Aimee Temple on 2025-09-15.
//

import Foundation


extension ContentView {
    
    enum LoadState {
        case loading, loaded, failed
    }
    
    @Observable @MainActor
    class ViewModel {
         private(set) var articles = [Article]()
        
        private(set) var loadState = LoadState.loading
        private(set) var loadError: (any Error)?
        
        func loadArticles() async {
            loadState = .loading
            
            do {
                let url = URL(string: "https://hws.dev/news")!
                let(data, _) = try await URLSession.shared.data(from: url)
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                articles = try decoder.decode([Article].self, from: data)
                loadState = .loaded
            } catch {
                print(error.localizedDescription)
                loadState = .failed
                loadError = error
            }
        }
        
        
    }
    
}
