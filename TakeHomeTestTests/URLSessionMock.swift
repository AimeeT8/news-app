//
//  URLSessionMock.swift
//  TakeHomeTestTests
//
//  Created by Aimee Temple on 2025-09-15.
//
@testable import TakeHomeTest
import Foundation



struct URLSessionMock: DataFetching {
    var data: Data
    
    func data(from url: URL) async throws -> (Data, URLResponse) {
        
        (data, URLResponse())
    }
}
