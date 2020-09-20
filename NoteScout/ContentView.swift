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
            ScrollView {
                VStack(spacing: 17) {
                    Note(note: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur dictum nisi a urna tincidunt, quis laoreet erat efficitur. Sed vitae tellus aliquet, vehicula libero viverra, elementum sem. Nulla suscipit ex in porttitor laoreet. Morbi iaculis, enim et rutrum semper, tortor est lobortis augue, ut auctor velit diam sed lacus. Curabitur ut enim sit amet mauris rutrum euismod. Sed bibendum interdum molestie. Cras tempus sollicitudin bibendum. Quisque tellus ante, fringilla at mi eu, vulputate euismod eros. Cras pharetra consequat tellus, ut imperdiet tellus condimentum ac. Donec suscipit risus placerat, ultrices neque vel, dictum massa. Integer eros nulla, condimentum pellentesque faucibus sit amet, sodales facilisis nunc")
                    Note()
                    Note()
                    Note()
                }
                .navigationBarTitle("NoteScout")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
