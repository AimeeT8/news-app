//
//  LoadFailedView.swift
//  TakeHomeTest
//
//  Created by Aimee Temple on 2025-09-15.
//

import SwiftUI

struct LoadFailedView: View {
    var error: (any Error)?
    var retry: () async -> Void
    
    var body: some View {
        ContentUnavailableView {
            Text("Load Error")
                .font(.headline)
        } description: {
            Text("There was an error loading the articles. Please try again.")
        } actions: {
            Button("Retry") {
                Task {
                    await retry()
                }
            }
        }
    }
}

#Preview {
    LoadFailedView(error: NSError(domain: "News App", code: 1)) {
        // do nothing
    }
}
