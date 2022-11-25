//
//  ProfessorModal.swift
//  DocentiUninaNew
//
//  Created by Francesco De Simone on 23/11/22.
//

import SwiftUI

struct ProfessorModal: View {
    @Binding var isShowingPlus: Bool
    @State private var searchText = ""
    
    var filteredDocenti: [Docente] {
        if (searchText.isEmpty) {
            return listaDocenti
        } else {
            return listaDocenti.filter {
                $0.fullName.localizedCaseInsensitiveContains(searchText)}
        }
    }

    var body: some View {
       // GeometryReader { geometry in
            
            ZStack{
                Color.blue
                    .opacity(0)
                    .ignoresSafeArea()
                    .onTapGesture {
                        isShowingPlus=false
                    }
                NavigationStack {
                    ZStack {
                        Image("Bg")
                            .resizable()
                            .scaledToFit()
                            .opacity(0.1)
                            .padding(.bottom, 52)
                        GeometryReader  { geometry in
                            ScrollView {
                                VStack {
                                    ForEach (filteredDocenti) { listaDocenti in
                                        LabelDocente(prof: listaDocenti)
                                    }
                                }
                                .padding(.vertical)
                            }
                        }
                    }
                    .navigationTitle("Aggiungi un Docente")
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbarColorScheme(.dark, for: .navigationBar)
                    .toolbarBackground(CustomColor.myColor, for: .navigationBar)
                    .toolbarBackground(.visible, for: .navigationBar)
                }
            }
            .searchable(text: $searchText)
            .preferredColorScheme(.light)
        //}
    }
    
    
    struct ProfessorModal_Previews: PreviewProvider {
        static var previews: some View {
            ProfessorModal(isShowingPlus: .constant(true))
        }
    }
}

