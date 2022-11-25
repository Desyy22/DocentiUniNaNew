//
//  ModalView.swift
//  DocentiUninaNew
//
//  Created by Francesco De Simone on 23/11/22.
//

import SwiftUI

struct ModalView: View {
    @Binding var isShowing: Bool
    
    
    var body: some View {
        GeometryReader { geometry in
            
            ZStack{
                Color.blue
                    .opacity(0)
                    .ignoresSafeArea()
                    .onTapGesture {
                        isShowing=false
                    }
                VStack{
                    VStack {
                        HStack {
                            Text("Avviso del 15/11")
                                .font(.system(size: 24, weight: .bold))
                                .frame(maxWidth: .infinity, alignment: .trailing)
                                .padding(.vertical)
                            Text("Nuovo!")
                                .font(.system(size: 18, weight: .light))
                                .foregroundColor(.red)
                                .padding(.horizontal,25)
                        }
                        Text("""
                            Si rende noto che l’esame del 17/11 è
                            rimandato al 19/11 per motivi logistici
                           """)
                        .multilineTextAlignment(.center)
                        .frame(width: geometry.size.width * 0.8)
                        .padding(.bottom)
                    }
                    .background(Rectangle()
                        .fill(.blue)
                        .cornerRadius(16)
                        .opacity(0.25)
                        .padding(.horizontal)
                        .shadow(color: .gray, radius: 5, x:1, y: 2)

                    )
                    .padding(.vertical)
                    VStack{
                        Text("Avviso del 2/11")
                            .font(.system(size: 24, weight: .bold))
                            .frame(maxWidth: .infinity, alignment: .center)
                            .padding(.vertical)
                        Text("""
                            Si comunica che gli esami della sessione
                            di novembre si terranno in data 17/11
                            e 25/11. Vi ricordo che la prenotazione
                            deve avvenire obbligatoriamente tramite
                             la piattaforma segrepass
                           """)
                        .multilineTextAlignment(.center)
                        .frame(width: geometry.size.width * 0.8)
                        .padding(.bottom)
                        
                    }
                    .background(Rectangle()
                        .fill(.blue)
                        .cornerRadius(16)
                        .opacity(0.25)
                        .padding(.horizontal)
                        .shadow(color: .gray, radius: 5, x:1, y: 2)
                    )
                    .padding(.vertical)
                    Spacer()
                    Link("Vai alla pagina del Docente", destination: URL(string: "https://www.youtube.com/watch?v=xvFZjo5PgG0")!)
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.blue)
                        .underline()
                    Spacer()
                }
                .padding(.top, 40)
                .foregroundColor(.black)

            }
        }
        .preferredColorScheme(.light)

    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView(isShowing: .constant(true))
    }
}
