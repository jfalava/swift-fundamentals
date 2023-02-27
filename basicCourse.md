# Swift Fundamentals
Jorge se quiere ir de sistemas  

# Contenidos
### 1. Arrays
### 2. Sets
### 3. Dictionary
### 4. Functions
### 5. If .. Else
### 6. For Loops
### 7. Enum
### 8. Enum & Raw Value
### 9. Switch
### 10. Basic Operators
### 11. Optionals  
# Fundamentos
## 1. Arrays
### Un array es una estructura de datos que puede almacenar colecciones de elementos del mismo tipo.  
- Defino el array con nombre ages que tiene enteros:  
    ```
    var ages: [Int] = [13, 24, 27, 45, 54]
    ```
- Cuento cuantos elementos hay en el array:  
    ```
    ages.count
    ```  
- Compruebo cual es el primer valor del array:   
    ```
    ages.first
    ```  
- Compruebo cual es el ultimo valor del array:   
    ```
    ages.last
    ```  
- Compruebo cual es el tercer valor (0 es el primero) del array:  
    ```
    ages[2]
    ```  
- Añado un nuevo valor (en este caso ```0```) al array:   
    ```
    ages.append(90)
    ```   
- Añado un nuevo valor (en este caso ```65```) en la posición ```0``` en el array:  
    ```
    ages.insert(65, at: 0)
    ```  
- Organizo el array de menor a mayor:  
    ```
    ages.sort()
    ```  
- Organizo el array de mayor a menor:  
    ```
    ages.reverse
    ```   
- Cambio el orden del array:  
    ```
    ages.shuffle()
    ```   
- Reflejo el valor actual del array:  
    ```
    print(ages)
    ```  

## 2. Sets
### Sets son como los arrays: una estructura de datos que almacena colecciones de datos, pero no puede tener elementos repetidos y no tiene orden.  

- Declaro el set asi:  
    ```
    var agesSet: Set<Int> = []
    ```
- Defino el valor del set como una variable:  
    ```
    var ages = [22, 22, 44, 66, 66, 77]
    ```  
- Importo un array a un set así:  
    ```
    var agesSet = Set(ages)
    ```  
- Inserto un item en el set así:  
    ```
    agesSet.insert(444)
    ```  
- Compruebo si un valor existe en el set:  
    ```
    agesSet.contains(444)
    ```
 - Reflejo el valor actual del set:  
    ```
    print(agesSet)
    ```  

## 3. Dictionary
### Esto es como una base de datos o como un fichero .json
- Defino que tipo de constante es y que contiene la constante:  
    ```
    let devices: [String: String]
    ```  
- Declaro que la constante ```devices``` tiene como tipo de ```key``` (nombre de la fila) un ```string``` (una palabra) y cuyo valor es de tipo ```string```.  
- Añado valores al diccionario:  
    ```
    let devices: [String: String] = [
        "telefono": "iPhone 13 Pro",
        "portatil": "2020 MacBook Pro",
        "tablet": "iPad Air 5",
        "sobremesa": "Ryzen 5800x w/ nVIDIA RTX 3070 & 32GB RAM",
    ]
    ```
- Podemos indicar un valor vacío para el diccionario:  
    ```
    let devices: [String: String] = [:]
    ```  
- Consulto el valor de una de las tablas del diccionario:  
    ```
    devices["telefono"]
    ```


## 4. Functions

- Como las funciones hacen algo, tienen que empezar con un verbo.  
- Siempre tienen un parentesis al final porque ahi van los parametros, si los tuviera.
- El ```scope``` es todo lo que haya entre los corchetes de la función.  
- Esta función printeará lo que hay dentro del operando ```print```: 
    ```
    func printInstructorsName() {
        print("jfalava")
    }
    ```

- Y llamo las funciones por su nombre y ```()```:  
    ```
    printInstructorsName()
    ```
    Pero este ejemplo está hardcodeado. La verdadera chicha está en hacer algo multiusos que pueda llamarse de varias maneras.

- En este caso llamo a un ```string```:  
    ```
    func printInstructorsName(name: String) {
        print(name)
    }
    ```
- Y llamo a la funcion:
    ```
    printInstructorsName(name: "jalava")
    ```

    → A mas generica la función, mejor, porque así puedo ser más flexible.

### Segundo ejemplo
- Quiero crear una función llamada ```add``` que va a realizar una operación matematica:
    ```
    func add(firstNumber: Int, to secondNumber: Int) -> Int {
        let sum = firstNumber + secondNumber
        return sum
    }
    ```
  - El operando ``->`` significa que al ejecutarse, devuelve tipo de dato, en este caso un ```int```.  
  - Esta función coge un numero entero, coge un segundo numero entero y devuelve otro numero entero, siempre definidos por el tipo de datos: ```Int```.
  - ```firstNumber``` y ```secondNumber``` son las etiquetas de parámetros, las usaré para indicar que valores tomaran para la ejecucion de la función.  
  - El operando ```to``` es una etiqueta de argumento, que ayuda al codigo a ser más legible y que sera usada en el ```call site```, cuando ejecute mi función. No requerida, si apreciada.  
- Este es el ```call site```:
    ```
    add(firstNumber: 12, to: 38)
    ```
- ¿Por que no necesito una etiqueta de argumento al principio?  
  - No hace falta.  
- ¿Por que aparece firstNumber como etiqueta de argumento?  
  - Porque no he definido nada. siempre saldra si no añado algo antes.  
## 5. If .. Else
## 6. For Loops
## 7. Enum
## 8. Enum & Raw Value
## 9. Switch
## 10. Basic Operators
## 11. Optionals