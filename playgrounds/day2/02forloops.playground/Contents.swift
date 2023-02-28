import UIKit

let allStars = ["kekw", "lul", "xdd", "Concern", "xffing"]
// lo haces mas legible indicandole al codigo que es lo que printeas, pero puedes ponerle cualquier cosa

// este loop leera todo el array desde el principio, item por item
for emote in allStars {
    print(emote) // aqui le pido que printee el contenido del array. como no le doy parada, lo hara hasta que termine de leerlo todo
}

// puedo pedirle que printee algo en especifico:
for emote in allStars where emote == "xdd" { // emote puede ser cualquier palabra, swift controla
    print(emote)
}

// si quiero leer un array un numero determinado de veces, usare un rango: 0...n o 0..>,<n

//for i in 0..<25 { // i es estandar cuando lees arrays
//    print(i)
//}

// puedo hacer mas cosas con este array, por ejemplo: crear un array vacio y crear un loop donde, con una funcion de numeros aleatorios, generar un numero aleatorio y añadirlo al array una cantidad determinada de veces:

var randomInts: [Int] = []
for _ in 0..<25 {
    let randomNumber = Int.random(in: 0...100) // creo una variable llamada randomNumber y le asigno un valor aleatorio entre 0 y 100
    randomInts.append(randomNumber) // añado con append al array lo generado por la variable randomNumber
}

print(randomInts)
