import UIKit

// un = es para definir un statement
// cuando nombremos booleans, siempre que sea lo mas descriptivo posible para que sea mas legible
var isDarkModeOn = false


// doble = -> si el siguente statment es algo.
//if isDarkModeOn == true {
//    print("yep")
//}


// los if por defecto asume que es true, por lo que no haria falta indicarlo

if isDarkModeOn {
    print("yep")
} else {
    print("lmao")
}

var myHighScore = 55
var yourHighScore = 447
var highScore = 1

if myHighScore > yourHighScore {
    print("me")
} else {
    print("you")
}

if highScore > 500 {
    print("nice")
} else if highScore > 250 {
    print("meh")
} else if highScore > 110 {
    print("kekw")
} else {
    print("XDD")
}
