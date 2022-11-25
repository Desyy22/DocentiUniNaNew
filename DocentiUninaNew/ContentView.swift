//
//  ContentView.swift
//  DocentiUninaNew
//
//  Created by Francesco De Simone on 23/11/22.
//

import SwiftUI
struct CustomColor {
    static let myColor = Color("BluDocenti")
}

struct ContentView: View {
    @State var showModal = false
    @State var showModalPlus = false
    //var rand: Int
    var body: some View {
        
        NavigationStack {
            ZStack {
                Image("Bg")
                    .resizable()
                    .scaledToFit()
                    .opacity(0.1)
                GeometryReader  { geometry in
                    ScrollView {
                        VStack {
                            /*ForEach (listaDocenti) { docente in
                                LabelDocente(prof: docente)
                            }*/
                            ForEach(0...3, id: \.self) { i in
                                LabelDocente(prof: listaDocenti[Int.random(in: 0...listaDocenti.count - 1)])
                            }
                            
                        }
                        .padding(.vertical)
                    }
                }
                .navigationTitle("I miei Docenti")
                .toolbarColorScheme(.dark, for: .navigationBar)
                .toolbarBackground(CustomColor.myColor, for: .navigationBar)
                .toolbarBackground(.visible, for: .navigationBar)
                .navigationTitle("SwiftUI")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            showModalPlus=true
                        } label: {
                            Image(systemName: "person.fill.badge.plus")
                                .font(.system(size: 20))
                        }
                        .sheet(isPresented: $showModalPlus) {
                            ProfessorModal(isShowingPlus: $showModalPlus)
                            
                        }
                        
                    }
                }
            }
        }
//        .background(Color.blue)
        .preferredColorScheme(.light)
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

