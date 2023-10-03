//
//  ContentView.swift
//  bookApp
//
//  Created by Andreas Antonsson on 2023-09-28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HomeScreen()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
