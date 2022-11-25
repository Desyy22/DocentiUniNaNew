//
//  ProfessorsList.swift
//  DocentiUninaNew
//
//  Created by Francesco De Simone on 23/11/22.
//

import SwiftUI

struct ProfessorsList: View {
    @State var showModal = false
    @State private var searchText = ""

    var body: some View {
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
                                ZStack {
                                    RoundedRectangle(cornerRadius: 16)
                                        .stroke(style: StrokeStyle(lineWidth: 1))
                                        .foregroundColor(.gray)
                                        .frame(height: geometry.size.height * 0.11)
                                        .shadow(color: .gray, radius: 2, y: 1)
                                        .background(.white)
                                    HStack{
                                        ZStack {
                                            Image("TestImage")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(height: 60)
                                                .clipShape(Circle())
                                        }
                                        .frame(alignment: .leading)
                                        Button("Nome Cognome ") {showModal=true}
                                            .font(.system(size: 22, weight: .semibold, design: .rounded))
                                            .padding(.horizontal)
                                        Spacer()
                                        Button {showModal = true}
                                    label: {
                                        Image(systemName: "chevron.right")
                                            .font(.system(size: 22, weight: .semibold, design: .rounded))
                                    }
                                    .padding(.trailing)
                                        
                                    .sheet(isPresented: $showModal) {
                                        ModalView(isShowing: $showModal)
                                    }
                                    }
                                    .foregroundColor(.blue)
                                }
                            
                        }
                        .padding()
                    }
                }
                .navigationTitle("Tutti i Docenti")
                .navigationBarTitleDisplayMode(.inline)
                .toolbarColorScheme(.dark, for: .navigationBar)
                .toolbarBackground(Color.blue, for: .navigationBar)
                .toolbarBackground(.visible, for: .navigationBar)
            }
        }
        .searchable(text: $searchText)
    }
}

struct ProfessorsList_Previews: PreviewProvider {
    static var previews: some View {
        ProfessorsList()
    }
}
