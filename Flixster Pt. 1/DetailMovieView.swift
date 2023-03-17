//
//  DetailMovieView.swift
//  Flixster Pt. 1
//
//  Created by TaeVon Lewis on 3/17/23.
//

import SwiftUI

struct DetailMovieView: View {
    let movie: [Movie] = Movie.mockMovies
    
    var body: some View {
        VStack {
            ForEach(movie) { movie in
                VStack {
                    AsyncImage(url: movie.backdropImage) { phase in
                        switch phase {
                            case .empty:
                                ProgressView()
                            case .success(let image):
                                image
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                            case .failure:
                                Image(systemName: "photo")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                            @unknown default:
                                fatalError()
                        }
                    }
                }
                HStack {
                    VStack {
                        Text(String(format: "%.1f", movie.voteAverage) + " Vote Average")
                        Text(String(movie.voteCount) + " Vote Count")
                    }
                    Text(String(movie.popularity) + " Popularity")
                }
            }
        }
    }
}

struct DetailMovieView_Previews: PreviewProvider {
    static var previews: some View {
        DetailMovieView()
    }
}
