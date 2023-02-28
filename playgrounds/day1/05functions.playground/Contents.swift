import UIKit

// como las funciones hacen algo, tienen que empezar con un verbo.
// siempre tienen un parentesis al final porque ahi van los parametros, si los tuviera
// scope: todo lo que haya entre los corchetes

// func printInstructorsName() {
//    print("jfalava")
//}

// llamo las funciones por su nombre

// printInstructorsName()

// y esto me saca lo que hay entre los corchetes


// pero esto esta hardcodeado. si quiero algo usable, tengo que, en parametros, indicar el tipo de cosa que quiero llamar con la funcion:

    //en este caso llamo a un string
func printInstructorsName(name: String) {
    // y ya no le digo que quiero que printee mi nombre, le digo que imprima un nombre que le indicare mas adelante cuando llame a la funcion
    print(name)
}

// y llamo a mi funcion:

printInstructorsName(name: "jalava")

// a mas generico la funcion, mejor, porque asi puedo ser mas flexible.

// segundo ejemplo //
// quiero crear una funcion llamada "add" que va a realizar una operacion matematica:
    // la "->" significa que al ejecutarse, devuelve tipo de dato, en este caso un int
    // esta funcion coge un numero entero, coge un segundo numero entero y devuelve otro numero entero
        // firstNumber y secondNumber son las etiquetas de parametros, las usare para indicar que valores tomaran para la ejecucion de la funcion
                        // este "to" es una etiqueta de argumento, que ayuda al codigo a ser mas legible y que sera usada en el call site, cuando ejecute mi funcion. puedo no usarla, pero mejor si
func add(firstNumber: Int, to secondNumber: Int) -> Int {
    // sumo:
    let sum = firstNumber + secondNumber
    // el resultado lo requiero con un return y el valor de la constante, en este caso sum
    return sum
}

// este es el call site
// por que no necesito una etiqueta de argumento al principio? no hace falta
// por que aparece firstNumber como etiqueta de argumento? porque no he definido nada. siempre saldra si no añado algo antes
add(firstNumber: 12, to: 38)
