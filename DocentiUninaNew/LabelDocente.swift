//
//  LabelDocente.swift
//  Prova funzione
//
//  Created by Francesco De Simone on 24/11/22.
//

import SwiftUI


struct LabelDocente: View {
    var prof : Docente
    @State var showModal = false
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .stroke(style: StrokeStyle(lineWidth: 1))
                .foregroundColor(.gray)
                .frame(height: 80)
                .shadow(color: .gray, radius: 2, y: 1)
                .background(.white)
                .opacity(0.75)
            
            
            HStack{
                ZStack {
                    Image(prof.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 70, height: 70)
                        .clipShape(Circle())
                        .padding(.horizontal)
                }
                .frame(alignment: .leading)
                Button(prof.fullName) {showModal=true}
                    .font(.system(size: 20, weight: .semibold, design: .rounded))
                Spacer()
                
                    .sheet(isPresented: $showModal) {
                        ModalView(isShowing: $showModal)
                    }
            }
            .foregroundColor(CustomColor.myColor)
        }
        
        .padding(.horizontal)
        
        
    }
}

struct LabelDocente_Previews: PreviewProvider {
    static var previews: some View {
        LabelDocente(prof: Docente(fullName: "Preview", imageName: "Preview"))
    }
}
