import UIKit

enum Emotes {
    case kekw
    case Concern
    case xdding
    case xffing
    case xddTree
}

// con switch podemos hacer el codigo mas limpio y que tenga mejor rendimiento:

func getOpinion(on emote: Emotes){
    switch emote {
    case .kekw:
        print("bien")
    case .Concern:
        print("dalamud?")
    case .xdding:
        print("xffing")
    case .xffing:
        print("xdding")
    case .xddTree:
        print("chills brother")
    }
}

getOpinion(on: .xddTree)
 

// puedo crear un switch sin un enum, pero necesito indicar todos los posibles modos:
let matchmakingRank = 856
func determinePlayerLeague(from rank: Int) {
    switch rank {
    case 0:
        print ("Play the game to determine your league")
    case 1..<50:
        print ("You are in BRONZE League")
    case 50..<100:
        print ("You are in SILVER League")
    case 100..<200:
        print ("You are in GOLD League")
    default: // en el caso de un enum, se cuantos cases tiene que haber, pero si no tengo un enum donde mirar, tengo que definir un valor por defecto, esto se hace con default, y entonces tengo todos los valores cubiertos.
        print ("You are in a league of your own. We don't know where you are")
    }
}

determinePlayerLeague(from: matchmakingRank)
