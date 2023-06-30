//
//  GetPopularMovies.swift
//  thortful_challenge
//
//  Created by Pedro Oliveira on 30/06/2023.
//

import Foundation

struct GetPopularMovies {

    private let repository: MoviesRepository

    init(repository: MoviesRepository) {
        self.repository = repository
    }

    func execute(forPage page: Int) async throws -> MovieResult {
        try await repository.popular(page: page)
    }
}
