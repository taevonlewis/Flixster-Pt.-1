//
//  ContentView.swift
//  Flixster Pt. 1
//
//  Created by TaeVon Lewis on 3/17/23.
//

import SwiftUI

struct ContentView: View {
    let movie: [Movie] = Movie.mockMovies
    
    var body: some View {
        List {
            ForEach(movie) { movie in
                HStack {
                AsyncImage(url: movie.posterImage) { phase in
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
                    VStack(alignment: .leading) {
                        Text(movie.title)
                            .font(.title2)
                            .lineLimit(1)
                            .foregroundColor(.white)
                        Text(movie.description)
                            .font(.body)
                            .lineLimit(3)
                            .foregroundColor(.white)
                    }
                    .padding(.init(top: 0, leading: -15, bottom: 0, trailing: 15))
                }
            }
            .listRowBackground(Color.black)
            .listRowSeparatorTint(Color.white)
        }
        .padding(EdgeInsets(top: -10, leading: -20, bottom: -10, trailing: -20))
        .listStyle(.plain)
        .background(Color.black)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
