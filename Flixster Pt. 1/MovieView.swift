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
        NavigationView {
            List {
                ForEach(movie) { movie in
                    NavigationLink(destination: DetailMovieView(movie: movie)) {
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
                                Text(movie.description)
                                    .font(.body)
                                    .lineLimit(3)
                            }
                            .padding(.init(top: 0, leading: -15, bottom: 0, trailing: 15))
                        }
                        .foregroundColor(.white)
                    }
                }
                .listRowBackground(Color.black)
                .listRowSeparatorTint(Color.white)
            }
            .padding(EdgeInsets(top: -10, leading: -20, bottom: -10, trailing: -20))
            .listStyle(.plain)
            .background(Color.black)
            .navigationTitle("Movies")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
    init(){
        Theme.navigationBarColors(background: .black, titleColor: .white)
    }
}

struct Theme {
    static func navigationBarColors(background: UIColor = .clear,
                                    titleColor: UIColor = .black,
                                    tintColor: UIColor = .black) {
        
        let navigationAppearance = UINavigationBarAppearance()
        navigationAppearance.configureWithOpaqueBackground()
        navigationAppearance.backgroundColor = background
        
        navigationAppearance.titleTextAttributes = [.foregroundColor: titleColor]
        navigationAppearance.largeTitleTextAttributes = [.foregroundColor: titleColor]
        
        UINavigationBar.appearance().standardAppearance = navigationAppearance
        UINavigationBar.appearance().compactAppearance = navigationAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navigationAppearance
        
        UINavigationBar.appearance().tintColor = tintColor
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
