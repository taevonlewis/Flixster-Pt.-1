//
//  ContentView.swift
//  Flixster Pt. 1
//
//  Created by TaeVon Lewis on 3/17/23.
//

import SwiftUI

struct ContentView: View {
    let movie: [Movie] = []
    
    var body: some View {
        List {
            ForEach(movie) { movie in
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
