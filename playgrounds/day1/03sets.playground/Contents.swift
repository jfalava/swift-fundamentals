import UIKit

// Set: como un array pero: no tiene orden, no puede tener duplicados. se usan por su rendimiento.

var ages = [22, 22, 44, 66, 66, 77]

// asi declaro un set:
// var agesSet: Set<Int> = []

//importo un array a un set
var agesSet = Set(ages)

// si quiero buscar algo y es hasheable, con la funcion contains puedo buscarlo
// en un array buscara desde el principio item por item, pero con set ira directamente al valor porque no hay duplicados

//inserto un item en el set
agesSet.insert(444)


agesSet.contains(444)
print(agesSet)


