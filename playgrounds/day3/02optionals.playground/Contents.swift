import UIKit


// swift te da la opcion de hacer cosas con valores vacios y retornos sin datos.
// ojo con no poder hacer algo con valores vacios: esto provocara crasheos

var ages: [Int] = []
ages.sort()

let oldestAge = ages.last // si no hay valores en el array, devuelve nil

// hay diferentes maneras de tratar un valor vacio:

// con un if let: primero compruebo si los valores que busco son los correctos para lo que quiero hacer:
if let oldestAge = ages.last  { // esto funciona porque tengo datos en el array
    print("The oldest age is \(oldestAge)") // si quiero poner un valor de una variable uso el operando \()
} else {
    print("no hay valores en el array") // si ages.last no tiene valor por la razon, que sea, se ejecutara esto
}

// dandole un valor a la variable en caso de que este sea nil:

// if let oldestAge = ages.last ?? 999 <- si es nil, le doy un valor 999, si no es nil, cogera ages.last

// con el operando guard:
func getOldestAge() {
    guard let oldestAge = ages.last else {
        return print("nope") // en el caso de que sea nil, directamente corta el codigo y ejecuta loque haya en este scope
    }
    print("\(oldestAge) es el mas viejo") // y si hay codigo ignorara ese primer scope y ejecutara lo que haya despues, en toda la funcion
}
getOldestAge()

// usando el valor del array sin importar que sea: force unwrap con el operando ! al final del valor. si el valor es nil, saltara un error fatal que puede crashear
let oldestAges = ages.last!
