import UIKit

// defino que tipo de constante es y que contiene la constante:
// para "let devices: [String: String]" declaro que la constante devices tiene como tipo de key string y cuyo valor es de tipo string
// recuerdo indicar que contiene el diccionario: "let devices: [String: String] = [:]" deja el diccionario vacio. si quiero añadir mas items, pongo comas para separarlos:

// esto es como una base de datos o como un fichero json

let devices: [String: String] = [
    "telefono": "iPhone 13 Pro",
    "portatil": "2020 MacBook Pro",
    "tablet": "iPad Air 5",
    "sobremesa": "Ryzen 5800x w/ nVIDIA RTX 3070 & 32GB RAM",
]

// si quiero consultar algo en mi diccionario:

devices["telefono"]
