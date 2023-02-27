import UIKit

// podemos hacer todo tipo de operaciones aritmeticas

let valueOne = 55
let valueTwo = 88

// si sabemos que el resultado no es entero, hay que indicar que son floats o doubles, y los dos valores tienen que ser iguales:

let valueOneone: Double = 55
let valueTwotwo: Double = 88

// el nombre de la variable es irrelevante
// si hacemos operaciones aritmeticas con enteros, si la operacion tiene decimales, swift ignorara todos los decimales y solo mostrara el entero
let sum = valueOneone / valueTwotwo
let div = valueOne / valueTwo

// modulo es una operacion que saca el resto de una division
let modulo = valueOne % valueTwo

// el operando == compara dos valores. los valores tienen que ser del mismo tipo (int, double, float)
valueTwo == valueOne


// con el operando ! antes de una constante podemos comprobar si algo es lo contrario
// podemos asignar a una variable un valor bool y swift sabra responder en consecuencia cuando se le pregunte.
var isDarkModeOn = false
if !isDarkModeOn {
    print("pero co animal")
}

// comparaciones en ifs tienen que ser tambien del mismo tipo. podemos tambien encadenarlo con bools.
if valueTwo > valueOne && !isDarkModeOn {
    print("quelocura")
}

// podemos hacer un if donde solo una de las condiciones sea verdad con el operando ||

if valueOne == valueTwo || !isDarkModeOn {
    print("yep")
}

// podemos añadir y quitar con +-= otro tipo de operandos, como strings:

let saludo = "Hi"
let nombre = "jorge"
print(saludo + " " + nombre) // si quiero un espacio, lo añado como si fuera un string cualquiera

// o arrays:

let edadViejo = [99, 88, 77]
let edadJoven = [1, 2, 3]
let todasEdades = edadJoven + edadViejo

print(todasEdades)
