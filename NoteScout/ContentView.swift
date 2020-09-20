//
//  ContentView.swift
//  NoteScout
//
//  Created by Greg Stark on 20/09/2020.
//

import SwiftUI

struct ContentView: View {
    var notes = [
        ["This is a note", "20 Sept 2020", "blue"],
        ["Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur dictum nisi a urna tincidunt, quis laoreet erat efficitur. Sed vitae tellus aliquet, vehicula libero viverra, elementum sem. Nulla suscipit ex in porttitor laoreet. Morbi iaculis, enim et rutrum semper, tortor est lobortis augue, ut auctor velit diam sed lacus. Curabitur ut enim sit amet mauris rutrum euismod. Sed bibendum interdum molestie. Cras tempus sollicitudin bibendum. Quisque tellus ante, fringilla at mi eu, vulputate euismod eros. Cras pharetra consequat tellus, ut imperdiet tellus condimentum ac. Donec suscipit risus placerat, ultrices neque vel, dictum massa. Integer eros nulla, condimentum pellentesque faucibus sit amet, sodales facilisis nunc", "19 Sept 2020", "yellow"]
    ]
    
    var body: some View {
        NavigationView {
            ZStack {
                ScrollView {
                    VStack(spacing: 17) {
                        ForEach(0..<notes.count) {
                            Note(note: notes[$0][0], date: notes[$0][1])
                        }
                    }
                    .navigationBarTitle("NoteScout")
                }
                
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Button(action: {
                            print("Add note..")
                        }) {
                            Image(systemName: "plus")
                                .font(.system(size: 25))
                                .foregroundColor(.black)
                                .padding(25)
                                .background(Color(.white))
                                .cornerRadius(50)
                                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        }
                    }
                    .padding(.horizontal, 35)
                    .padding(.vertical, 20)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
