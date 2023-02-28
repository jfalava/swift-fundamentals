import UIKit

// enum es una lista de cosas, con titulo y componentes

// puedo hacerlo tambien con "case kekw, Concern..." separando los case por comas.

enum Emotes {
    case kekw
    case Concern
    case xdding
    case xffing
    case xddTree
}

// el enum puede considerarse un nuevo tipo de dato, como Int o String a la hora de definirlo en otra parte del codigo. puedo llamarlo en una funcion:

func getOpinion(on emote: Emotes) {
    if emote == .kekw {
        print("bien")
    } else if emote == .Concern {
        print("dalamud?")
    } else if emote == .xdding {
        print("xffing")
    } else if emote == .xffing {
        print("xdding")
    } else {
        print("chills brother")
    }
}

// y puedo llamarlo utilizando .valordelcase:
getOpinion(on: .xddTree)
