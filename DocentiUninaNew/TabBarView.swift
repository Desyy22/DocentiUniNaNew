//
//  TabBarView.swift
//  DocentiUninaNew
//
//  Created by Francesco De Simone on 23/11/22.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Label("I miei Docenti", systemImage: "building.columns")
                }
            ProfessorsList()
                .tabItem{
                    Label("Tutti i Docenti", systemImage: "list.bullet")
                }
            LibrettoView()
                .tabItem {
                    Label("Il mio libretto", systemImage: "person")
                }
            
        }
        
        
    }
}
struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
