//
//  ContentView.swift
//  NoteScout
//
//  Created by Greg Stark on 20/09/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Here will be first note ....")
            }
            .navigationBarTitle("NoteScout")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
