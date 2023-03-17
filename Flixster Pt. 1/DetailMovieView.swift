//
//  DetailMovieView.swift
//  Flixster Pt. 1
//
//  Created by TaeVon Lewis on 3/17/23.
//

import SwiftUI

struct DetailMovieView: View {
    let movie: Movie
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                VStack {
                    AsyncImage(url: movie.backdropImage) { phase in
                        switch phase {
                            case .empty:
                                ProgressView()
                            case .success(let image):
                                image
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: geometry.size.width)
                            case .failure:
                                Image(systemName: "photo")
                                    .resizable()
                                    .scaledToFit()
                            @unknown default:
                                fatalError()
                        }
                    }
                    Text(movie.title)
                        .font(.title2)
                }
                HStack(spacing: 50) {
                    VStack {
                        Text(String(format: "%.1f", movie.voteAverage) + " Vote Average")
                        Text(String(movie.voteCount) + " Vote Count")
                    }
                    Text(String(movie.popularity) + " Popularity")
                }
                .padding(.bottom)
                Text(movie.description)
                    .font(.body)
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
            .background(Color.black)
            .foregroundColor(.white)
        }
    }
}

struct DetailMovieView_Previews: PreviewProvider {
    static var previews: some View {
        DetailMovieView(movie:
            Movie(title: "M3GAN", posterImage: URL(string:posterBase+"/d9nBoowhjiiYc4FBNtQkPY7c11H.jpg")!, description: "A brilliant toy company roboticist uses artificial intelligence to develop M3GAN, a life-like doll programmed to emotionally bond with her newly orphaned niece. But when the doll's programming works too well, she becomes overprotective of her new friend with terrifying results.", backdropImage: URL(string:backdropBase+"/q2fY4kMXKoGv4CQf310MCxpXlRI.jpg")!, voteAverage: 7.5, voteCount: 1822, popularity: 1103.359))
    }
}
