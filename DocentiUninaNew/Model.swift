//
//  Model.swift
//  DocentiUninaNew
//
//  Created by Francesco De Simone on 23/11/22.
//

import Foundation

struct Docente : Identifiable {
    var id = UUID()
    var fullName : String
    var imageName : String
}

var listaDocenti : [Docente] = [
    Docente(fullName: "Pietro Ciuci", imageName: "Pietro"),
    Docente(fullName: "Maria Vittoria Agosti", imageName: "Fiorellì"),
    Docente(fullName: "Stefano Giacobbe", imageName: "Stefano"),
    Docente(fullName: "Valentina Russo", imageName: "Ij"),
    Docente(fullName: "Ludovica Marte", imageName: "Misha"),
    Docente(fullName: "Pasquale Cutolo", imageName: "Bob"),
    Docente(fullName: "Gennaro Savastano", imageName: "Gennaro"),
    Docente(fullName: "Ciro L'Immortale", imageName: "Giulio")
]


