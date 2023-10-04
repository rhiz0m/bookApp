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
            HomeScreen().padding(CGFloat(Spacing().large))
            primaryBtn(title: "Button Home!", onPress: {
                print("Home button works on homescreen! :)")
            })
        }
        .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
