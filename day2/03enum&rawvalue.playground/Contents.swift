import UIKit


// puedo darle un valor raw a cada case con = "contenido"
enum Emotes: String { // antes tengo que decirle a swift que el valor de los case es un string o me dara un error
    case kekw       = "bien"
    case Concern    = "dalamud?"
    case xdding     = "xffing"
    case xffing     = "xdding"
    case xddTree    = "chills brother"
} // puedo identar el codigo para que sea mas legible, no afecta a la ejecucion

func getOpinion(on emote: Emotes){
    print(emote.rawValue) // ahora swift sabe que tiene un raw value, puedo llamarlo con su funcion
}

getOpinion(on: .xddTree)

