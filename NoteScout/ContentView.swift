//
//  ContentView.swift
//  NoteScout
//
//  Created by Greg Stark on 20/09/2020.
//

import SwiftUI

struct ContentView: View {
    var notes = [NoteData()]
    
    var body: some View {
        NavigationView {
            ZStack {
                ScrollView {
                    VStack(spacing: 17) {
                        ForEach(0..<notes.count) {
                            Note(note: notes[$0])
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
